----------------------------------------------------------------------------------
-- Company: UA
-- Engineer: Alexandre David Brandão
-- 
-- Create Date: 11/11/2020 02:09:07 PM
-- Design Name: StateMachine for Datacapture 
-- Module Name: StateMachine - Behavioral
-- Project Name: SOFTLi
-- Target Devices: ZC706
-- Tool Versions: 2018.3 Vivado
-- Description: Simple 3 StateMachine
-- 
-- Dependencies: NONE
-- 
-- Revision: 1.2
-- Revision 0.01 - File Created
-- Additional Comments: N/A
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity StateMachine is
    Port ( Capture      : in  STD_LOGIC;
           Ready        : out STD_LOGIC;
           val_info     : in  STD_LOGIC;
           Reset_in     : in  STD_LOGIC;
           wraparound   : in  STD_LOGIC;
           Write_Enable : out STD_LOGIC;
           Reset_out    : out STD_LOGIC;
           Clk          : in  STD_LOGIC);
           
end StateMachine;

architecture Behavioral of StateMachine is
    type state_type is (
                    STATE_IDLE,         -- This is the initial/idle state      
                                        -- Change state when Capture = '1'              
	                STATE_CAPTURE,      -- This state starts the capture
	                                    -- Drive Data to memory,     
	                                    -- the state machine changes state to FINISH
	                STATE_FINISH);      -- Assert the end of Capture       
	signal state, next_state : state_type:= STATE_IDLE;
	
	signal s_ready : std_logic := '1';
begin

Ready <= s_ready; -- Ready signal always active


SYNC_PROCESS: process(Clk)   -- Synchronus States
    begin
    
    if(rising_edge(Clk)) then
        if(Reset_in = '1') then -- Active low
            state <= STATE_IDLE;
        else
            state <= next_state;
        end if;
    
    end if;
    
    end process;


FiniteSM_NextState: process(state , wraparound, Capture)
begin  
    
    case (state) is
        when STATE_IDLE =>
            
            if (Capture = '1') then
                next_state <= STATE_CAPTURE;
           
            elsif (Capture = '0') then 
                -- Stay in same state
                next_state <= STATE_IDLE;
            end if;
        
        when STATE_CAPTURE =>
        
            if(wraparound = '1') then
                next_state <= STATE_FINISH;
            
            elsif (wraparound = '0') then
                -- Stay in same state
                next_state <= STATE_CAPTURE;
            end if;
            
        when STATE_FINISH =>
             
             if (Capture = '0') then
                next_state <= STATE_IDLE;
            
             elsif (Capture = '1') then 
                -- Stay in same state
                next_state <= STATE_FINISH;
             end if;
        
        when others =>
                next_state <= STATE_IDLE;
    end case;
end process;


OUTPUT_OF_STATE: process(state) --Combinatorial Logic;
begin

    case (state) is
        when STATE_IDLE =>
            Reset_out    <= '1';
            Write_Enable <= '0';
                
        when STATE_CAPTURE =>
            
            -- Finished capturing DATA        
            if (wraparound = '1') then 
                Write_Enable <= '0';
                Reset_out <= '0';
            
            -- Store Data
            -- Let's assume val info is always 1, therefore
            else  --if (val_info = '1') then
                Write_Enable <= '1';
                Reset_out <= '0';
            
--            -- Do nothing
--            else 
--                Reset_out    <= '0';
--                Write_Enable <= '0';
           
            end if;
            
        when STATE_FINISH =>
            Write_Enable <= '0';
            Reset_out    <= '0';
                
        when others =>
            Write_Enable <= '0';
            Reset_out    <= '0';
    end case;

end process; 


end Behavioral;
