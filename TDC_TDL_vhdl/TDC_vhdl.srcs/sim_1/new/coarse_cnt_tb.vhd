----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/28/2021 02:45:07 PM
-- Design Name: 
-- Module Name: coarse_cnt_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: coarse counter test_bench
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

entity coarse_cnt_tb is
--  Port ( );
end coarse_cnt_tb;

architecture Behavioral of coarse_cnt_tb is

  -- Instantiate component
 COMPONENT coarse_cnt IS
    PORT ( clk_i       : in  STD_LOGIC;
           nrst_i      : in  STD_LOGIC;
           cnt_en_i    : in  STD_LOGIC;
           coarse_cnt_o: out STD_LOGIC_VECTOR(12-1 DOWNTO 0)
    );
  END COMPONENT coarse_cnt;
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock      : STD_LOGIC := '0';
  signal s_nrst_i   : STD_LOGIC := '0';
  signal s_cnt_en_i : STD_LOGIC;
  -- Outputs
  signal s_coarse_cnt_o : STD_LOGIC_VECTOR(12-1 DOWNTO 0);
  
  -- clock period
  constant clk_period : time := 2ns; --500MHz clock
  
begin
    -- Instantiate UUT : coarse-counter
    uut: coarse_cnt PORT MAP(
        clk_i        => clock,
        nrst_i       => s_nrst_i,
        cnt_en_i     => s_cnt_en_i,
        coarse_cnt_o => s_coarse_cnt_o
    );
    
    -- Clock process
    clk_process: PROCESS 
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    run_counter: PROCESS
    begin
    
        s_nrst_i   <= '1';
        s_cnt_en_i <= '0';
        wait for 3 * clk_period;
        s_nrst_i   <= '0';
        wait for 2*clk_period;
        s_nrst_i   <= '1';
        s_cnt_en_i <= '1';
        wait for 20*clk_period;
        
    end PROCESS;
    
    
end Behavioral;
