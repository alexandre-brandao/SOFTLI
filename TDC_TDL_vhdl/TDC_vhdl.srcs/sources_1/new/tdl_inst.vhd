----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandão @ alexandre98@ua.pt 
-- 
-- Create Date: 02/26/2021 05:13:15 PM
-- Design Name: 
-- Module Name: tdl - Behavioral
-- Project Name: Softli
-- Target Devices: ZC706 - Zynq 7000 Processor
-- Tool Versions: 
-- Description: Implementation of a basic Carry Chain with 2 output stages for
-- stability(avoiding metastability) using thermometer coding as 2 outputs.
-- The file contains a hit input that acts as the start of the chain reaction and stores 3 possible chain of registers
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity tdl is
    Generic ( NUM_STAGES : integer := 560;   -- Number of Delays
              Xoff	     : integer := 6;     -- Slice Coordinate X
		      Yoff	     : integer := 60;    -- Slice Coordinate Y
		      SIM_MODE   : boolean := true; -- Simulation Mode
              TAP_DELAY  : integer := 15     -- Tap Delay in Picoseconds
		     );
    
    Port ( clk_i                       : in STD_LOGIC;
           hit_i                       : in STD_LOGIC;
           rst_i                       : in STD_LOGIC;
           store_FirstPiece_i          : in STD_LOGIC;
           store_LastPiece_i           : in STD_LOGIC;
           thermometer_sample_stage_o  : out STD_LOGIC_VECTOR(1 DOWNTO 0);               -- First and Last bits of the thermometer code
           thermometer_FirstPiece_val_o: out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0);-- Save the values of the Start Sampling stage
           thermometer_LastPiece_val_o : out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0) -- Save the values of the Stop  Sampling Stage
           );
end tdl;

architecture Behavioral of tdl is

  -- Declare constant directly related to the CARRY4 instantiations
    constant NUM_CARRY4_STAGES : integer := (NUM_STAGES/4); 
    constant TAP_DELAY_TIME    : time := 1ps * TAP_DELAY;
    
    -- Declare type
        -- TAPPED DELAY LINE AND SAMPLING STAGE REGISTERS
    signal tdl_val_w, tdl_val_r                                    : STD_LOGIC_VECTOR(NUM_STAGES-1 DOWNTO 0)       := (others => '0'); 
        -- THERMOMETER CODES STORING LOCATION
    signal tdl_thermometer_FirstPiece_val_r, tdl_thermometer_LastPiece_val_r : STD_LOGIC_VECTOR(NUM_CARRY4_STAGES-1 DOWNTO 0):= (others => '0'); -- Stage 2 (Output) Sampling
    
    --Declare strings for constraints using Attributes
    ---- To place the delayline in a particular spot (best for linearities and resolution), the LOC constraint is used.
    ATTRIBUTE LOC			 	: string;                             -- LOC Attribute
    attribute dont_touch        : string;
	ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
	ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization
    
begin
     
    -- Generation of the carrychain, starting at the specified X, Y coordinate. 
	carry_delay_line: FOR i IN 0 TO NUM_CARRY4_STAGES-1 GENERATE
	    
	    --------------------------------------------------------------------------------------
	    ----------------------------- SIMULATION ----------------------------------------------
	    
        SIM_first_carry4: IF i = 0 and SIM_MODE = TRUE GENERATE	
        begin
            tdl_val_w(3 downto 0) <= ((hit_i & hit_i & hit_i & hit_i) and "1111") after TAP_DELAY_TIME;
        end GENERATE;
        
        SIM_next_carry4 : IF i > 0 and SIM_MODE = TRUE GENERATE	

        BEGIN
            tdl_val_w(4*(i+1)-1 downto 4*i) <= (tdl_val_w(4*i -1 downto 4*(i-1)) and "1111") after TAP_DELAY_TIME ;
        END GENERATE;
        ---------------------------------END OF SIMULATION--------------------------------------------
           
           
        ---------------------------------REAL-TIME APPLICATION ---------------------------------------   
        NON_SIM_FirstCarry4: IF i = 0 and SIM_MODE = FALSE GENERATE
        -- ATTRIBUTE LOC OF delayblock : LABEL IS "SLICE_X"&INTEGER'image(Xoff)&"Y"&INTEGER'image(Yoff+i);
               attribute dont_touch  of delayblock: label is "TRUE";
            BEGIN
                delayblock: 
                CARRY4
                    PORT MAP(
                        CO     => tdl_val_w(3 downto 0),  -- 4-bit carry out
                        O      => open,                   -- 4-bit carry chain XOR data out
                        CI     => '0',                    -- 1-bit carry cascade input
                        CYINIT => hit_i,                  -- 1-bit carry initialization
                        DI     => "0000",                 -- 4-bit carry-MUX data in
                        S      => "1111"                  -- 4-bit carry-MUX select input
                        );
         END GENERATE;
         
        NON_SIM_NEXT_CARRY4: IF i > 0 and SIM_MODE = FALSE GENERATE 
                 
--                ATTRIBUTE LOC OF delayblock : LABEL IS "SLICE_X"&INTEGER'image(Xoff)&"Y"&INTEGER'image(Yoff+i);	
                  attribute dont_touch  of delayblock: label is "TRUE";
            BEGIN
               
                delayblock: 
                CARRY4
                    PORT MAP(
                        CO     => tdl_val_w((4*(i+1)-1) downto i*4), -- 4-bit carry out
                        O      => open,                              -- 4-bit carry chain XOR data out
                        CI     => tdl_val_w((4*i)-1),                -- 1-bit carry cascade input
                        CYINIT => '0',                               -- 1-bit carry initialization
                        DI     => "0000",                            -- 4-bit carry-MUX data in
                        S      => "1111"                             -- 4-bit carry-MUX select input
                        );
            END GENERATE;
           --------------------------------- END OF REAL-TIME APPLICATION ---------------------------------------   
        END GENERATE;

    -- Now we need the CO to be latched twice for stability reasons. This is to make sure the conversion of a unary/thermometer code is converted on time.
   
    -- FIRST STAGE D FLIP FLOPS TO SAMPLE DELAY CHAIN 
    Latching_Entry_Stage: FOR j IN 0 TO NUM_STAGES-1 GENERATE
    
        --! Commentary
        --  In most cases, the compiler will automatically place the flip flops in the desired slices along the Carry4 block. If it doesn't happens
        --  then it's best to uncomment the line of code below and do the same for the following processes
        --!
        -- ATTRIBUTE LOC OF TDC_VAL_REG : LABEL IS "SLICE_X"&INTEGER'image(Xoff)&"Y"&INTEGER'image(Yoff+integer(floor(real(j/4))));
        -- FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
        -- Clock Enable (posedge clk)
        attribute dont_touch  of TDC_VAL_REG: label is "TRUE";
        BEGIN
        TDC_VAL_REG : FDCE 
            generic map(INIT => '0')
            port map(
                D  => tdl_val_w(j),
                CE => '1',
                C  => clk_i,
                CLR=> rst_i,
                Q  => tdl_val_r(j)
                );

        END GENERATE;
   
   Output_2_Stage_start: FOR k IN 0 TO NUM_CARRY4_STAGES-1 GENERATE
   --     ATTRIBUTE LOC OF tdc_thermometer_firstpiece_val_reg : LABEL IS "SLICE_X"&INTEGER'image(Xoff-1)&"Y"&INTEGER'image(Yoff+integer(floor(real(k/4))));
        attribute dont_touch  of tdc_thermometer_firstpiece_val_reg: label is "TRUE";
        BEGIN
            tdc_thermometer_firstpiece_val_reg : FDCE 
            generic map(INIT => '0')
            port map(
                Q  => tdl_thermometer_FirstPiece_val_r(k),
                D  => tdl_val_r((4*(k+1))-1),
                CE => store_FirstPiece_i,
                C  => clk_i,
                CLR=> rst_i               
                );  
    END GENERATE;
    
    Output_2_Stage_STOP: FOR l IN 0 TO NUM_CARRY4_STAGES-1 GENERATE
 --   ATTRIBUTE LOC OF tdc_thermometer_lastpiece_val_reg : LABEL IS "SLICE_X"&INTEGER'image(Xoff+1)&"Y"&INTEGER'image(Yoff+integer(floor(real(l/4))));
      attribute dont_touch  of tdc_thermometer_lastpiece_val_reg: label is "TRUE";
    begin 
         
         tdc_thermometer_lastpiece_val_reg : FDCE 
            generic map(INIT => '0')
            port map(
                Q  => tdl_thermometer_LastPiece_val_r(l),
                D  => tdl_val_r((4*(l+1))-1),
                CE => store_LastPiece_i,
                C  => clk_i,
                CLR=> rst_i
                );       
    END GENERATE;
       
    -- Pass register value directly to output lines
    thermometer_FirstPiece_val_o    <= tdl_thermometer_FirstPiece_val_r; 
    thermometer_LastPiece_val_o     <= tdl_thermometer_LastPiece_val_r;                     
    thermometer_sample_stage_o <= tdl_val_r(NUM_STAGES-1) & tdl_val_r(0);  -- Sync Signal

end Behavioral;
