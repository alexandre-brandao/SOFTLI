----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/27/2021 04:49:03 PM
-- Design Name: 
-- Module Name: coarse_cnt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:  Free running counter in VHDL Language
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity coarse_cnt is
     Port (  clk_i       : in  STD_LOGIC;
             nrst_i      : in  STD_LOGIC;
             cnt_en_i    : in  STD_LOGIC;
             coarse_cnt_o: out STD_LOGIC_VECTOR(9 DOWNTO 0)
     );
end coarse_cnt;

architecture Behavioral of coarse_cnt is

ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization

    signal s_cnt_r : unsigned(9 DOWNTO 0) := (OTHERS => '0');
    
begin
    process(clk_i)
    begin
        if( rising_edge(clk_i) ) then
           if( nrst_i = '0') then
                 s_cnt_r <= to_unsigned(1, 10);
           elsif( cnt_en_i = '1' ) then
                s_cnt_r <= s_cnt_r + 1;     
           end if; 
        end if;
    end process;
    
    --OUTPUT CURRENT VALUE
    coarse_cnt_o <= std_logic_vector(s_cnt_r);

end Behavioral;
    
   