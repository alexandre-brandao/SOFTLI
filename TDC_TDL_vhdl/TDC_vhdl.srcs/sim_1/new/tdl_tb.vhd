----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/28/2021 07:18:30 PM
-- Design Name: 
-- Module Name: tdl_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Delay line TestBench
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

entity tdl_tb is
--  Port ( );
end tdl_tb;

architecture Behavioral of tdl_tb is

  -- Instantiate component 
 COMPONENT tdl IS
           Generic ( NUM_STAGES  : integer := 560;
                     Xoff	     : INTEGER := 6;   
                     Yoff	     : INTEGER := 60   
		     );
    
            Port ( clk_i                      : in STD_LOGIC;
                   hit_i                      : in STD_LOGIC;
                   rst_i                      : in STD_LOGIC;
                   store_start_i              : in STD_LOGIC;
                   store_stop_i               : in STD_LOGIC;
                   thermometer_sample_stage_o : out STD_LOGIC_VECTOR(1 DOWNTO 0);               
                   thermometer_start_val_o    : out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0);
                   thermometer_stop_val_o     : out STD_LOGIC_VECTOR((NUM_STAGES/4)-1 DOWNTO 0)
                   );

  END COMPONENT tdl;
  
  -- Declare constants
  constant numstages : integer := 560;
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock          : STD_LOGIC := '0';
  signal s_hit_i, s_rst_i, s_store_start_i, s_store_stop_i: std_logic := '0';
  
  -- Outputs
  signal s_thermometer_sample_stage_o : STD_LOGIC_VECTOR(1 DOWNTO 0);
  signal s_thermometer_start_val_o, s_thermometer_stop_val_o : STD_LOGIC_VECTOR((numstages/4)-1 DOWNTO 0);
  
  -- clock period
  constant clk_period : time := 2ns; --500MHz clock
  
begin
    -- Instantiate UUT : tdl
    uut: tdl
    PORT MAP ( clk_i                      => clock,
               hit_i                      => s_hit_i,
               rst_i                      => s_rst_i,
               store_start_i              => s_store_start_i,
               store_stop_i               => s_store_stop_i,
               thermometer_sample_stage_o => s_thermometer_sample_stage_o,
               thermometer_start_val_o    => s_thermometer_start_val_o,
               thermometer_stop_val_o     => s_thermometer_stop_val_o
    );
    
    -- Clock process
    clk_process: process
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    run_error_checker: process
    begin
        s_hit_i <= '0';
        s_rst_i <= '0';
        s_store_start_i <= '0';
        s_store_stop_i  <= '0';
        wait for 1 * clk_period;
        
        s_hit_i <= '1';
        s_rst_i <= '0';
        s_store_start_i <= '0';
        s_store_stop_i  <= '0';
        wait for clk_period/10;
        
        s_hit_i <= '1';
        s_rst_i <= '0';
        s_store_start_i <= '1';
        s_store_stop_i  <= '0';
        wait for (9*clk_period)/10;
        
        s_hit_i <= '1';
        s_rst_i <= '0';
        s_store_start_i <= '0';
        wait for clk_period;
        
        s_hit_i <= '1';
        s_store_stop_i  <= '1';
        wait for clk_period;
        
        s_hit_i <= '0';
        s_rst_i <= '0';
        s_store_start_i <= '0';
        s_store_stop_i  <= '0';
        wait for clk_period;
        
        s_hit_i <= '0';
        s_rst_i <= '1';
        s_store_start_i <= '0';
        s_store_stop_i  <= '0';
        wait for clk_period;
                
    end process;
        



end Behavioral;
