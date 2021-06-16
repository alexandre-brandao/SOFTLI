----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 11/11/2020 02:09:07 PM
-- Design Name: RAM_Memory
-- Module Name: Memory - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: Empty
-- Revision 0.01 - File Created
-- Additional Comments: None
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory is
    Generic (DATA_WIDTH  : integer := 128;
             ADDRESS_BITS: integer := 12);
    
    Port ( Address      : in  STD_LOGIC_VECTOR (ADDRESS_BITS-1 downto 0);
           Data_in      : in  STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
           Data_out     : out STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
           Write_Enable : in  STD_LOGIC;
           Clk          : in  STD_LOGIC);
end Memory;

architecture Behavioral of Memory is
    
    CONSTANT MEMORY_SIZE : integer := 2**ADDRESS_BITS;
    --Divide by 8 due to 8 samples
    TYPE MEMORY IS ARRAY(0 to (MEMORY_SIZE)-1) of STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    
    signal s_data: STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
    signal Ram : MEMORY :=  (OTHERS => (OTHERS => '0'));
begin

Data_out <= Ram(to_integer(unsigned(Address)-1));
RAM_MEM: process(Clk,Write_Enable, Address)
    begin
        if(rising_edge(Clk)) then
        
            if(Write_Enable = '1') then
                Ram(to_integer(unsigned(Address)))<= Data_in; --Write to memory
            end if;
            
        end if;
    end process;
    
    
end Behavioral;
