----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 04:56:04 PM
-- Design Name: 
-- Module Name: X_fer_req_signal_projection - Behavioral
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
-- use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity X_fer_req_signal_projection is
    generic (NCLOCK_CYCLES    : integer := 2160; -- 2160 Samples
             sample_size_bits : integer := 12  );
             
    Port ( Single_shot : in STD_LOGIC;   -- User operation done at software level
           clock_in    : in STD_LOGIC;   -- System internal clock
           x_fer_req   : out STD_LOGIC); --IF ON THEN SEND SAMPLES TO MEMORY
end X_fer_req_signal_projection;

architecture Behavioral of X_fer_req_signal_projection is

-- Maintain status signal
signal sample_collect : std_logic := '0';

-- Counter
signal s_counter : unsigned(sample_size_bits-1 downto 0) := (others => '0');

-- Implementation of an Edge Detector to substitute function "Rising_edge"
signal reg2 : STD_LOGIC;
signal reg1 : STD_LOGIC;
signal r_edge : STD_LOGIC;

begin

main: process(clock_in, r_edge)
        begin
            if r_edge = '1' then
                   sample_collect  <= '1';          -- Start collecting samples
                  
            elsif (rising_edge(clock_in)) then
                 
                 -- \brief Only counter is allowed to disable sample_collection
                 -- At the moment, the maximum number of samples that a user is allowed collect is HARDWARE DEFINED.

                 if s_counter = X"870" then
                    sample_collect <= '0';        -- DEACTIVATE START SEQUENCE
                    s_counter <= (others => '0');     
                    
                 elsif sample_collect = '1' then
                    s_counter <= s_counter + 1;  
                 end if;
                  
                 
                 -- If start sampling then start counting
                     
             end if;
        end process;

-- (FED) Rising Edge Detector
FED: process (clock_in)
        begin 
              ---IF single shot is active HIGH , set up the memory start sequence
            if(rising_edge(clock_in)) then   
                reg1 <= Single_shot;                 --START ONLY ACTIVE IN SINGLE SHOT TRANSITION
                reg2 <= reg1;
            end if;
        end process;
    
r_edge <= reg1 and not reg2;  -- RisingEdge
x_fer_req <= sample_collect;  
 
end Behavioral;
