----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2021 02:33:32 PM
-- Design Name: 
-- Module Name: COUNTER_1CLK_CYCLE_ENABLER - Behavioral
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

entity COUNTER_1CLK_CYCLE_ENABLER is
    generic(nbits: integer := 4);
    Port ( clock   : in STD_LOGIC;
           enable  : in STD_LOGIC;
           nrst_i  : in STD_LOGIC;
           start_o : out STD_LOGIC;
           stop_o  : out STD_LOGIC);
end COUNTER_1CLK_CYCLE_ENABLER;

architecture Behavioral of COUNTER_1CLK_CYCLE_ENABLER is

    signal s_counter : unsigned(nbits-1 downto 0) := (others => '0');
    signal s_stop, s_start : std_logic := '0';
    
begin

Counter_module : 
process (clock)
begin
   if rising_edge(clock) then
         --(synchronous) reset is active low, reset all values
       if nrst_i = '0' then
            s_counter <= (others => '0');
            s_start <= '0';
            s_stop  <= '0';
            
       elsif enable = '1' then
            --Increment counter and output the 4MSBs and 4 LSBs
            s_counter <= s_counter + 1;
            
            if(s_counter = 4) then
                s_start <= '1';
                s_stop  <= '0';
            elsif (s_counter = 5) then
                s_start <= '0';
                s_stop  <= '1';
            else
                s_start <= '0';
                s_stop  <= '0';
            end if;
       end if;
   end if;  
end process;
     
start_o <= s_start;
stop_o  <= s_stop;

end Behavioral;
