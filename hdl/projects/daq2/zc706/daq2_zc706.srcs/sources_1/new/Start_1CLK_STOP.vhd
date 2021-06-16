----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2021 04:16:30 PM
-- Design Name: 
-- Module Name: enabler - Behavioral
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

entity Start_1CLK_STOP is
    Port ( clk_i     : in  STD_LOGIC;
           trigger_i : in  STD_LOGIC;
           start_o   : out  STD_LOGIC;
           stop_o    : out STD_LOGIC);
end Start_1CLK_STOP;

architecture Behavioral of Start_1CLK_STOP is
    ------EDGE DETECTOR COMPONENT---------
    COMPONENT edgeDetector IS
        PORT ( clk_i   : in  STD_LOGIC;
               nrst_i  : in  STD_LOGIC;
               ref_i   : in  STD_LOGIC;
               Redge_o : out STD_LOGIC; -- Rising Edge Detector output
               Fedge_o : out STD_LOGIC);-- Lower  Edge Detector output
    
    END COMPONENT edgeDetector;
    --------------------------------------

    signal cnt           : integer   :=  0 ;
    signal s_edge_detect : std_logic := '0';
    signal s_stop_o      : std_logic := '0';
    signal s_start_o     : std_logic := '0';
    
begin
    B1 :  edgeDetector
    PORT MAP ( 
    clk_i   => clk_i,
    nrst_i  => '1',
    ref_i   => trigger_i,
    Redge_o => s_edge_detect, -- Rising Edge Detector output
    Fedge_o => open);         -- Lower  Edge Detector output
    
    start_proc: process
    begin
        if rising_edge(clk_i) then 
            if(s_edge_detect = '1') then
                s_start_o <= '1';
                s_stop_o  <= '0';
            else 
                s_start_o <= '0';
                s_stop_o  <= '1';
            end if; 
        end if;
    end process;

    start_o <= s_start_o;
    stop_o  <= s_stop_o;
    
end Behavioral;
