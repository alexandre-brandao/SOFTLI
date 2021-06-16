----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 02:45:07 PM
-- Design Name: 
-- Module Name: error_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: error test bench
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

entity error_tb is
--  Port ( );
end error_tb;

architecture Behavioral of error_tb is

  -- Instantiate component 
 COMPONENT error IS
          PORT( coarse_cnt_i    : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
                max_cnt_o       : out STD_LOGIC
               );

  END COMPONENT error;
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock          : STD_LOGIC := '0';
  signal s_coarse_cnt_i : STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');
 
  -- Outputs
  signal s_max_cnt_o : STD_LOGIC;
  
  -- clock period
  constant clk_period : time := 2ns; --500MHz clock
  
begin
    -- Instantiate UUT : error
    uut: error
    PORT MAP(
         coarse_cnt_i => s_coarse_cnt_i,
         max_cnt_o    => s_max_cnt_o
       
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
        
        s_coarse_cnt_i   <= "0000";          -- 0000
        wait for 2 * clk_period;
        
        s_coarse_cnt_i   <= "1010";          -- 1010
        wait for 2*clk_period;
        
        s_coarse_cnt_i   <= "1101";          -- 1101
        wait for 2*clk_period;
        
        s_coarse_cnt_i   <= "1011";          -- Limit value
        wait for 2*clk_period;
        
    end PROCESS;
    
    
end Behavioral;
