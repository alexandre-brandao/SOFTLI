----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2021 12:28:10 AM
-- Design Name: 
-- Module Name: edgeDetector - Behavioral
-- Project Name: 
-- Target Devices: zc706
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: Mealy design for edge detection
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgeDetector is
    Port ( clk_i   : in STD_LOGIC;
           nrst_i  : in STD_LOGIC;
           ref_i   : in STD_LOGIC;
           redge_o : out STD_LOGIC;
           fedge_o : out STD_LOGIC); -- Rising Edge Detector output
      
end edgeDetector;

architecture Behavioral of edgeDetector is

-- Declare constants

-- Declare types
type MealyStateMachine_type is (zero, one); -- two states

-- Declare signals
signal r_cstate, r_nstate : MealyStateMachine_type := zero; -- Rising  Edge state Machine
signal f_cstate, f_nstate : MealyStateMachine_type := zero;  -- Falling Edge state Machine
signal s_rising_edge, s_falling_edge : std_logic := '0';
signal nref_i : std_logic := '1';

begin
    
  --  nref_i <= not ref_i; -- Invert input signal for falling edge detection
    
    process (clk_i, nrst_i)
    begin
        if (nrst_i = '0') then
            r_cstate <= zero;
            f_cstate <= zero;
        elsif(rising_edge(clk_i)) then
            r_cstate <= r_nstate;
            f_cstate <= f_nstate;
        end if;
    end process;
    
    -- output and state changes for Rising or Falling Edge Detector
    process(ref_i, r_cstate)
    begin
            -- Store current state as next
            r_nstate <= r_cstate;  -- case no state is specified
        
            s_rising_edge <= '0';
            case r_cstate is
            
                when zero => 
                    if ref_i = '1' then
                        r_nstate <= one;
                        s_rising_edge <= '1';
                    end if;
                
                when one =>
                    if ref_i = '0' then
                        r_nstate <= zero;    
                    end if;
            end case;
    end process;
    
    process(ref_i, f_cstate)
    begin
            -- store current state as next
            f_nstate <= f_cstate;  -- case no state is specified
        
            s_falling_edge <= '0';
            case f_cstate is 
                when zero => 
                    if ref_i = '1' then
                        f_nstate <= one;
                    end if;
                
                when one =>
                    if ref_i = '0' then
                        s_falling_edge <= '1';
                        f_nstate <= zero;    
                    end if;
            end case;
    end process;
    
   fedge_o <= s_falling_edge;
   redge_o <= s_rising_edge;
end Behavioral;
