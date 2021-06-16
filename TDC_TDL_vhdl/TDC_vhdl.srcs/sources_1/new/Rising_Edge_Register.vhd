----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2021 03:48:05 PM
-- Design Name: 
-- Module Name: Rising_Edge_Register - Behavioral
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

entity FlipFlop is
    generic(CLR_ACTIVE_HIGH : boolean := true;
            POS_EDGE        : boolean := true);
    Port ( C   : in  STD_LOGIC;
           Q   : out STD_LOGIC;
           D   : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           CLR : in STD_LOGIC);
end FlipFlop;

architecture Behavioral of FlipFlop is
    ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
    ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization
begin

Type1:
if (CLR_ACTIVE_HIGH = true and POS_EDGE = true) generate
begin
    process(C, CLR)
    begin
        if CLR = '1' then
            Q <= '0';
        elsif rising_edge(C) then
            if(EN = '1') then  
                Q <= D;
            end if;
        end if;
    end process;
end generate;

Type2:
if (CLR_ACTIVE_HIGH = false and POS_EDGE= true) generate
begin
    process(C, CLR)
    begin
        if CLR = '0' then
            Q <= '0';
        elsif rising_edge(C) then
            if(EN = '1') then  
                Q <= D;
            end if;
        end if;
    end process;
end generate;

Type3:
if (CLR_ACTIVE_HIGH = true and POS_EDGE = false) generate
begin
    process(C, CLR)
    begin
        if CLR = '1' then
            Q <= '0';
        elsif falling_edge(C) then
            if(EN = '1') then  
                Q <= D;
            end if;
        end if;
    end process;
end generate;

Type4:
if (CLR_ACTIVE_HIGH = false and POS_EDGE = false) generate
begin
    process(C, CLR)
    begin
        if CLR = '0' then
            Q <= '0';
        elsif falling_edge(C) then
            if(EN = '1') then  
                Q <= D;
            end if;
        end if;
    end process;
end generate;

end Behavioral;
