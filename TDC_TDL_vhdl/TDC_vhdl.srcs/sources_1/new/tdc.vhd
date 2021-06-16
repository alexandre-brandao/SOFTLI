----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao @alexandre98@ua.pt
-- 
-- Create Date: 02/28/2021 08:21:24 PM
-- Design Name: 
-- Module Name: tdc - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - updated READY SIGNAL conditions.
-- Revision 0.03 - REMOVED TRACKING COMPONENTS FOR DEBUGGING AND CLEANED THE PROJECT.

-- Additional Comments:
-- s   - signal
-- re  - rising edge
-- fe  - falling edge
-- sfe - signal falling edge
-- sre - signal rising edge
----------------------------------------------------------------------------------


library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.VComponents.all;

entity tdc is
    Generic (START_LOCATION_OF_SLICE_X : integer := 6; -- If you really want to loc manually, uncomment attribute LOC of carry delay line
             START_LOCATION_OF_SLICE_Y : integer := 40;
             NUM_STAGES                : integer := 168;
             RUN_SIMULATION            : boolean := false;
             SIMULATED_TAP_DELAY_PS    : integer := 50);
             
    Port ( clk_i         : in STD_LOGIC;
           nrst_i        : in STD_LOGIC;
           en_tdc_i      : in STD_LOGIC;
           start_i       : in STD_LOGIC;
           stop_i        : in STD_LOGIC;
           measurement_o : out STD_LOGIC_VECTOR (20 downto 0);
           valid_o       : out STD_LOGIC           
           );
end tdc;

architecture Behavioral of tdc is

-- Declare constants
constant BIN_CODE_BUS_SIZE : integer := 8;
constant N_TAPS_PER_CARRY4     : integer := 4;
constant NUM_CARRY4_STAGES     : integer := NUM_STAGES/ N_TAPS_PER_CARRY4;

ATTRIBUTE keep_hierarchy 	            : string;                 -- Keep Hierarchy to specify FPGA optimization
ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization


--
-- -- Instantiate Components
-- TDL Component 
COMPONENT tdl IS
       Generic ( NUM_STAGES : integer := NUM_STAGES;
                 Xoff	    : INTEGER := START_LOCATION_OF_SLICE_X;   
                 Yoff	    : INTEGER := START_LOCATION_OF_SLICE_Y;   
                 SIM_MODE   : boolean := RUN_SIMULATION; 
                 TAP_DELAY  : integer := SIMULATED_TAP_DELAY_PS
         );

        Port ( clk_i                       : in STD_LOGIC;
               hit_i                       : in STD_LOGIC;
               rst_i                       : in STD_LOGIC;
               store_FirstPiece_i          : in STD_LOGIC;
               store_LastPiece_i           : in STD_LOGIC;
               thermometer_sample_stage_o  : out STD_LOGIC_VECTOR(1 DOWNTO 0);               
               thermometer_FirstPiece_val_o: out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0);
               thermometer_LastPiece_val_o : out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0)
               );

END COMPONENT tdl;
  
-- COARSE COUNTER
COMPONENT coarse_cnt IS
PORT ( clk_i       : in  STD_LOGIC;
       nrst_i      : in  STD_LOGIC;
       cnt_en_i    : in  STD_LOGIC;
       coarse_cnt_o: out STD_LOGIC_VECTOR(9 DOWNTO 0)
);
END COMPONENT coarse_cnt;

-- ERROR COMPONENT
COMPONENT error IS
      PORT( coarse_cnt_i    : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
            max_cnt_o       : out STD_LOGIC
           );

END COMPONENT error;

-- SYNCHRONIZER COMPONENT
COMPONENT synchronizer IS
        GENERIC (SIM_MODE : boolean := RUN_SIMULATION);
        PORT (
        clk                  : in  STD_LOGIC;
        eom_i                : in  STD_LOGIC;
        nrst_i               : in  STD_LOGIC;
        sync_signals_i       : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
        StoreFirstPiece_en_o : out STD_LOGIC;
        StoreLastPiece_en_o  : out STD_LOGIC;
        cnt_en_o             : out STD_LOGIC);

END COMPONENT synchronizer;

-- T2B DECODER COMPONENT
COMPONENT t2b_decoder IS
      Generic ( NUM_STAGES       : integer := NUM_STAGES;
                BIN_CODE_BUS_WIDTH : integer := BIN_CODE_BUS_SIZE);
                
      Port (thermometer_start_i      : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
            thermometer_stop_i       : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
            binary_FirstPiece_o      : out STD_LOGIC_VECTOR(BIN_CODE_BUS_WIDTH-1 DOWNTO 0);
            binary_LastPiece_o       : out STD_LOGIC_VECTOR(BIN_CODE_BUS_WIDTH-1 DOWNTO 0);
            valid_FirstPieceTherm_i  : in  STD_LOGIC;
            valid_LastPieceTherm_i   : in  STD_LOGIC;
            ready_FirstPieceBin_o    : out STD_LOGIC;
            ready_LastPieceBin_o     : out STD_LOGIC;
            nrst                     : in  STD_LOGIC;
            clk                      : in  STD_LOGIC
      );
END COMPONENT t2b_decoder;

-- MERGE COMPONENT
COMPONENT merge IS
    generic(FINE_BUS_WIDTH : integer := BIN_CODE_BUS_SIZE;
            SIMULATION     : boolean := RUN_SIMULATION;
            TAP_DELAY_PS   : integer := SIMULATED_TAP_DELAY_PS);
            
     Port ( clk_i                 : in  STD_LOGIC;
            valid_bin_FirstPiece  : in  STD_LOGIC;
            valid_bin_LastPiece   : in  STD_LOGIC;
            nrst_i                : in  STD_LOGIC;
            coarse_cnt_i          : in  STD_LOGIC_VECTOR(9 downto 0);
            fine_bin_FirstPiece_i : in  STD_LOGIC_VECTOR(FINE_BUS_WIDTH-1 downto 0);
            fine_bin_LastPiece_i  : in  STD_LOGIC_VECTOR(FINE_BUS_WIDTH-1 downto 0);
            tdc_measure_o         : out STD_LOGIC_VECTOR(20 downto 0);
            eom_o                 : out STD_LOGIC
          );
END COMPONENT merge;

--Rising_Edge_Clock Register:
COMPONENT FlipFlop IS
          generic(CLR_ACTIVE_HIGH : boolean := true;
                  POS_EDGE        : boolean := true);
          Port ( C   : in  STD_LOGIC;
                 Q   : out STD_LOGIC;
                 D   : in  STD_LOGIC;
                 EN  : in  STD_LOGIC;
                 CLR : in  STD_LOGIC);
END COMPONENT FlipFlop;

----------------------------------------------------

--Declare signals
signal tdc_rst_w                   : std_logic;
signal cnt_nrst_w                  : std_logic;
signal max_cnt_w                   : std_logic; -- ERROR SIGNAL SIGNALIZING MAX COARSE COUNTING
signal eom_w                       : std_logic; -- END OF MEASUREMENT

signal StoreFirstPiece_en_w        : std_logic; -- ENABLE START SAMPLING FOR THE TDL
signal StoreLastPiece_en_w         : std_logic; -- ENABLE STOP  SAMPLING FOR THE TDL
signal cnt_en_w                    : std_logic; -- COARSE COUNTER ENABLE

signal tdl_thermometer_FirstPiece_val_w : std_logic_vector(NUM_CARRY4_STAGES-1 DOWNTO 0);
signal tdl_thermometer_LastPiece_val_w  : std_logic_vector(NUM_CARRY4_STAGES-1 DOWNTO 0);
signal sync_signals_w              : std_logic_vector(1    DOWNTO 0);

signal fine_bin_FirstPiece_w       : std_logic_vector(BIN_CODE_BUS_SIZE-1 DOWNTO 0);  -- T2B START FINE MEASURE
signal fine_bin_LastPiece_w        : std_logic_vector(BIN_CODE_BUS_SIZE-1 DOWNTO 0);  -- T2B STOP  FINE MEASURE
signal coarse_cnt_w                : std_logic_vector(9    DOWNTO 0);  
               -- COARSE COUNTER OUTPUT
signal tdc_measurement_w           : std_logic_vector(20   DOWNTO 0);

signal hit_r : std_logic := '0';

-- Edge Detection signals
--signal sre_start_i, sre_tdc_rst_w  : STD_LOGIC := '0';           -- Rising Edge Signals
signal s_RisingEdgeOf_start_i, s_RisingEdgeOf_tdc_rst_w  : STD_LOGIC := '0';           -- Rising Edge Signals

-- Ready Signals
signal s_ready_FirstPiece_therm, s_ready_LastPiece_therm                  : STD_LOGIC; -- Thermometer value are ready to be processed
signal s_ready_fine_bin_FirstPiece, s_ready_fine_bin_LastPiece                    : STD_LOGIC; -- Binary values are ready to be processed

begin

-- COARSE RESET SIGNAL
cnt_nrst_w <= nrst_i and not eom_w;


-- HIT GENERATION
tdc_rst_w <= not nrst_i or stop_i or max_cnt_w;

SIM: if RUN_SIMULATION = true generate
begin
    process (s_RisingEdgeOf_tdc_rst_w, s_RisingEdgeOf_start_i, tdc_rst_w, en_tdc_i)
    begin
      if s_RisingEdgeOf_tdc_rst_w = '1' then
        hit_r <= '0' after 10ps;
      elsif s_RisingEdgeOf_start_i = '1' then  
        if (en_tdc_i = '1') then
            hit_r <= '1' after 10ps;
        else
            hit_r <= '0' after 13ps;
        end if;
      end if;          
    end process;
    
    
end generate;

NON_SIM: if RUN_SIMULATION = false generate
begin
    process (s_RisingEdgeOf_tdc_rst_w,  s_RisingEdgeOf_start_i, tdc_rst_w, en_tdc_i)
    begin
      if s_RisingEdgeOf_tdc_rst_w = '1' then
        hit_r <= '0';
      elsif s_RisingEdgeOf_start_i = '1' then  
        if (en_tdc_i = '1') then
            hit_r <= '1';
        else
            hit_r <= '0';
        end if;
      end if;          
    end process;
end generate;
--------------------- Component connections here ----------------------------------

coarse_cnt_inst: 
    coarse_cnt 
    PORT MAP(
        clk_i        => clk_i,
        nrst_i       => cnt_nrst_w,
        cnt_en_i     => cnt_en_w,
        coarse_cnt_o => coarse_cnt_w
    );

error_inst: 
    error
    PORT MAP(
         coarse_cnt_i => coarse_cnt_w(9 downto 6),
         max_cnt_o    => max_cnt_w  
    );
    
synchronizer_inst: 
    synchronizer
    PORT MAP(
        clk                  => clk_i,
        eom_i                => eom_w,
        nrst_i               => cnt_nrst_w,
        sync_signals_i       => sync_signals_w,
        StoreFirstPiece_en_o => StoreFirstPiece_en_w,
        StoreLastPiece_en_o  => StoreLastPiece_en_w,
        cnt_en_o             => cnt_en_w
    );

------------------- Valid Signals for T2B_decoder_inst
process(cnt_en_w, eom_w, StoreFirstPiece_en_w)
begin  
    if eom_w = '1' then
        s_ready_FirstPiece_therm <= '0';
    elsif (cnt_en_w = '1' and StoreFirstPiece_en_w = '0') or (StoreLastPiece_en_w = '1' and StoreFirstPiece_en_w = '0') then
        s_ready_FirstPiece_therm <= '1';
    else 
        NULL; 
    end if; 
end process;

process(cnt_en_w, eom_w, StoreLastPiece_en_w)
begin
    if eom_w = '1' then
        s_ready_LastPiece_therm <= '0';
    elsif  StoreLastPiece_en_w = '1' then
        s_ready_LastPiece_therm <= '1';
    else 
        NULL; 
    end if; 
end process;

 ------------------------------------------
 
t2b_decoder_inst: 
    t2b_decoder
    GENERIC MAP (NUM_STAGES => NUM_STAGES)                    
    PORT MAP ( 
         thermometer_start_i     => tdl_thermometer_FirstPiece_val_w,
         thermometer_stop_i      => tdl_thermometer_LastPiece_val_w,
         binary_FirstPiece_o     => fine_bin_FirstPiece_w,
         binary_LastPiece_o      => fine_bin_LastPiece_w,
         valid_FirstPieceTherm_i => s_ready_FirstPiece_therm,
         valid_LastPieceTherm_i  => s_ready_LastPiece_therm,
         ready_FirstPieceBin_o   => s_ready_fine_bin_FirstPiece,
         ready_LastPieceBin_o    => s_ready_fine_bin_LastPiece,  
         nrst                    => cnt_nrst_w,
         clk                     => clk_i
      );

tdl_inst:
    tdl
    PORT MAP ( clk_i                        => clk_i,
               hit_i                        => hit_r,
               rst_i                        => '0',
               store_FirstPiece_i           => StoreFirstPiece_en_w,
               store_LastPiece_i            => StoreLastPiece_en_w,
               thermometer_sample_stage_o   => sync_signals_w,
               thermometer_FirstPiece_val_o => tdl_thermometer_FirstPiece_val_w,
               thermometer_LastPiece_val_o  => tdl_thermometer_LastPiece_val_w
    );

merge_inst:
    merge
     PORT MAP
          ( clk_i                 => clk_i,
            valid_bin_FirstPiece  => s_ready_fine_bin_FirstPiece,
            valid_bin_LastPiece   => s_ready_fine_bin_LastPiece,
            nrst_i                => nrst_i,
            coarse_cnt_i          => coarse_cnt_w,
            fine_bin_FirstPiece_i => fine_bin_FirstPiece_w,
            fine_bin_LastPiece_i  => fine_bin_LastPiece_w,
            tdc_measure_o         => tdc_measurement_w,
            eom_o                 => eom_w
          );



------------  Aggregrate Signals and Components here   -----------------                
rising_edge_start: 
        FlipFlop
        Generic Map ( CLR_ACTIVE_HIGH => true,
                      POS_EDGE        => true)              
        Port Map ( 
                 C   => start_i,
                 Q   => s_RisingEdgeOf_start_i,
                 D   => '1',
                 EN  => '1',
                 CLR => hit_r);

rising_edge_tdc_rst:
        FlipFlop
        Generic Map ( CLR_ACTIVE_HIGH => false,
                      POS_EDGE        => true)              
        Port Map( 
                 C   => tdc_rst_w,
                 Q   => s_RisingEdgeOf_tdc_rst_w,
                 D   => '1',
                 EN  => '1',
                 CLR => hit_r);
  
   ------------------------------------------------------------------------
   
-- PULL SIGNALS
valid_o <= eom_w;
measurement_o <= tdc_measurement_w;

end Behavioral;
