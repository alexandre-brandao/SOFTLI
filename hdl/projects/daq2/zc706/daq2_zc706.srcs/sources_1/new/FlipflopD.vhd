----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2020 12:51:01 AM
-- Design Name: 
-- Module Name: D-FlipFlop - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFlipFlop is
    Port ( inSignal  : in STD_LOGIC;
           outSignal : out STD_LOGIC;
           ref_clk   : in STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is
       
    
begin
process(ref_clk)
begin
    if(rising_edge(ref_clk)) then
        outSignal <= inSignal;
    end if;
end process;
end Behavioral;
