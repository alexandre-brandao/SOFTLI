----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/28/2021 04:03:06 PM
-- Design Name: 
-- Module Name: t2b_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t2b_decoder_tb is
--  Port ( );
end t2b_decoder_tb;

architecture Behavioral of t2b_decoder_tb is
    
  -- Instantiate component 
 COMPONENT t2b_decoder IS
          Generic ( NUM_STAGES       : integer := 560;
                    OUTPUT_BUS_WIDTH : integer := 8);
                    
          Port (thermometer_start_i : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
                thermometer_stop_i  : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
                binary_start_i      : out STD_LOGIC_VECTOR(OUTPUT_BUS_WIDTH-1 DOWNTO 0);
                binary_stop_i       : out STD_LOGIC_VECTOR(OUTPUT_BUS_WIDTH-1 DOWNTO 0)
          );
 END COMPONENT t2b_decoder;
  
  -- Declare constants
  constant  numstages  : integer := 560;
  constant  BusWidth_O : integer := 8;
  
  -- clock period (500MHz)
  constant clk_period : time := 2ns; 
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock                 : STD_LOGIC := '0';
  signal s_thermometer_stop_i  : STD_LOGIC_VECTOR( (numstages/4) -1 DOWNTO 0) := (others => '1'); -- All bits should be set to 0 before-hand
  signal s_thermometer_start_i : STD_LOGIC_VECTOR( (numstages/4) -1 DOWNTO 0) := (others => '0'); -- All bits should be set to 1 before-hand
 
  -- Outputs
  signal s_binary_start_i : STD_LOGIC_VECTOR( BusWidth_O-1 DOWNTO 0);
  signal s_binary_stop_i  : STD_LOGIC_VECTOR( BusWidth_O-1 DOWNTO 0);
  
  
begin
    -- Instantiate UUT : t2b_decoder
    uut: t2b_decoder
     GENERIC MAP ( 
         NUM_STAGES => numstages,
         OUTPUT_BUS_WIDTH => BusWidth_O
         )
                    
     PORT MAP ( 
         thermometer_start_i => s_thermometer_start_i,
         thermometer_stop_i  => s_thermometer_stop_i,
         binary_start_i      => s_binary_start_i,
         binary_stop_i       => s_binary_stop_i
      );
    
    -- Clock process
    clk_process: PROCESS 
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    run_decoder: PROCESS
    begin
        wait for 2 * clk_period;
        
        -- 560/4 = 140 -> 140/10 = 14 bits
        for i in 0 to (numstages/4)/10 loop
            s_thermometer_start_i(i) <= '1';
            s_thermometer_stop_i(i)  <= '0';
        end loop;
        
        wait for 2 * clk_period;
        
        for i in 0 to (numstages/4)/5 loop
            s_thermometer_start_i(i) <= '1';
            s_thermometer_stop_i(i)  <= '0';
        end loop;
        
        wait for 2 * clk_period;
        
        for i in 0 to (numstages/4)/10 loop
            s_thermometer_start_i(i) <= '1';
            s_thermometer_stop_i(i)  <= '0';
        end loop;
        
        wait for 2 * clk_period;
        
    end PROCESS;
    


end Behavioral;
