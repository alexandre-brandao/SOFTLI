----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2020 02:09:07 PM
-- Design Name: 
-- Module Name: Counter_Xbits - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_Xbits is
    generic ( bits : integer := 12 -- Number of counter bits
    );
    Port ( Reset     : in STD_LOGIC;
           Enable    : in STD_LOGIC;
           Address   : out STD_LOGIC_VECTOR ( (bits-1) downto 0);
           wraparound: out STD_LOGIC;
           Clk       : in STD_LOGIC);
end Counter_Xbits;

architecture Behavioral of Counter_Xbits is
    signal s_address : std_logic_vector((bits-1) downto 0) := (others => '0');
    
begin

-- I/O Signal Assignmment
Address <= s_address;

-- Counter
counter: PROCESS (Clk,Enable)
            begin
                if(rising_edge(Clk)) then
                
                    -- Reset counter
                    if(Reset = '1') then
                        s_address <= (others => '0');
                        wraparound <= '0';
                    -- Start Counting
                    elsif(Enable = '1') then
                    
                        -- If Max Value Attained, then Start from 0
                        if(unsigned(s_address) = (2**bits-1)) then 
                            --Signalize that we've set the max value to 0
                            s_address <= (others => '0');
                            wraparound <= '1';
                        else
                            wraparound <= '0';
                            -- Increment address counter
                            s_address <= std_logic_vector(unsigned(s_address) + 1);
                        end if;
                    
                 end if;
                end if;
            end process;


end Behavioral;
