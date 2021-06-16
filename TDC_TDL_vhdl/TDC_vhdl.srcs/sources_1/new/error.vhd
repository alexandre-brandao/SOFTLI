----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/27/2021 05:41:32 PM
-- Design Name: 
-- Module Name: error - Behavioral
-- Project Name: 
-- Target Devices: Zynq 7 Series ZC706
-- Tool Versions: 
-- Description: Verification of case it hit max value
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

entity error is
       PORT( coarse_cnt_i    : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
             max_cnt_o       : out STD_LOGIC
            );
end error;

architecture Behavioral of error is
    ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
    ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization

signal max_cnt_w : std_logic := '0';

begin

max_cnt_w <= '1' when (coarse_cnt_i = "1011") else '0' ;

--extend signal to output
max_cnt_o <= max_cnt_w;



end Behavioral;
