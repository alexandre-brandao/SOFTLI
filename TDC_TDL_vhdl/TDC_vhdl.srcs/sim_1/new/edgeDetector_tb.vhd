----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2021 01:42:34 PM
-- Design Name: 
-- Module Name: edgeDetector_tb - Behavioral
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


entity edgeDetector_tb is
--  Port ( );
end edgeDetector_tb;

architecture Behavioral of edgeDetector_tb is

  -- Instantiate component 
 COMPONENT edgeDetector IS
        PORT ( clk_i   : in  STD_LOGIC;
               nrst_i  : in  STD_LOGIC;
               ref_i   : in  STD_LOGIC;
               Redge_o : out STD_LOGIC; -- Rising Edge Detector output
               Fedge_o : out STD_LOGIC);-- Lower  Edge Detector output

  END COMPONENT edgeDetector;
  
 -- Declare UUT TB signals
  -- Inputs
  signal clock          : STD_LOGIC := '0';
  signal s_nrst_i       : STD_LOGIC := '1';
  signal s_ref_i        : STD_LOGIC := '0';
   
  -- Outputs
  signal RisingEdge     : STD_LOGIC;
  signal FallingEdge    : STD_LOGIC;
    
  -- clock period
  constant clk_period : time := 2ns; --500MHz clock
begin
    -- Instantiate UUT : error
    uut :  edgeDetector
           PORT MAP ( 
           clk_i   => clock,
           nrst_i  => s_nrst_i,
           ref_i   => s_ref_i,
           Redge_o => RisingEdge,  -- Rising Edge Detector output
           Fedge_o => FallingEdge);-- Lower  Edge Detector output
    
    -- Clock process
    clk_process: PROCESS 
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    
    RUN_TestBench: PROCESS
    begin
        
        s_nrst_i <= '1';
        s_ref_i  <= '0';
        wait for 2 * clk_period;
        
        -- reset
        s_nrst_i <= '0';
        wait for clk_period;
        s_nrst_i <= '1';
        wait for clk_period;
        
        s_ref_i  <= '1';
        wait for 0.4 * clk_period;
        s_ref_i  <= '0';
        wait for 1.4 * clk_period;
        s_ref_i  <= '1';
        wait for 1.3 * clk_period;
        s_ref_i  <= '0';
        wait for 1.0 * clk_period;
        s_ref_i  <= '1';
        wait for 2.3 * clk_period;
        s_ref_i  <= '0';
        wait for 6.0 * clk_period;
        
    end PROCESS;
    
end Behavioral;
