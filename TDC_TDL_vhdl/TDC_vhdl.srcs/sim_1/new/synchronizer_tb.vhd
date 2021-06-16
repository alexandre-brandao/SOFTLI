----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/28/2021 06:45:00 PM
-- Design Name: 
-- Module Name: synchronizer_tb - Behavioral
-- Project Name: 
-- Target Devices: zc706 Zynq 7 series
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

entity synchronizer_tb is
--  Port ( );
end synchronizer_tb;

architecture Behavioral of synchronizer_tb is


  -- Instantiate component 
 COMPONENT synchronizer IS
            PORT (
            sync_signals_i : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
            eom_i          : in  STD_LOGIC;
            start_en_o     : out STD_LOGIC;
            stop_en_o      : out STD_LOGIC;
            cnt_en_o       : out STD_LOGIC;
            clk_i          : in  STD_LOGIC);

  END COMPONENT synchronizer;
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock, s_eom_i    : STD_LOGIC := '0';
  signal s_sync_signals_i  : STD_LOGIC_VECTOR(1 DOWNTO 0) := (others => '0');
 
  -- Outputs
  signal s_cnt_en_o, s_stop_en_o, s_start_en_o : STD_LOGIC;
  
  -- clock period
  constant clk_period : time := 2ns; --500MHz clock
    
  
begin
    -- Instantiate UUT : coarse-counter
    uut: synchronizer
    PORT MAP(
        sync_signals_i => s_sync_signals_i,
        eom_i          => s_eom_i,
        start_en_o     => s_start_en_o,
        stop_en_o      => s_stop_en_o,
        cnt_en_o       => s_cnt_en_o,
        clk_i          => clock
    );
    
    -- Clock process
    clk_process: PROCESS 
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    run_error_checker: PROCESS
    begin
        s_eom_i <= '0';
        s_sync_signals_i <= "00";
        wait for 2 * clk_period;
        
        s_eom_i <= '1';
        s_sync_signals_i <= "00";
        wait for 1 * clk_period;
        
        s_eom_i <= '0';
        s_sync_signals_i <= "01";
        wait for 2 * clk_period;
        
        s_eom_i <= '0';
        s_sync_signals_i <= "10";
        wait for 2 * clk_period;
        
        s_eom_i <= '0';
        s_sync_signals_i <= "11";
        wait for 2 * clk_period;
        
        -- More throrough analysis
        
        
        
    end PROCESS;

end Behavioral;
