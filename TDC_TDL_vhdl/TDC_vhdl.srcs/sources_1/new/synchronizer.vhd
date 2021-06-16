----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/27/2021 05:04:27 PM
-- Design Name: 
-- Module Name: synchronizer - Behavioral
-- Project Name: 
-- Target Devices: Zynq 7 series (Zynq 7000) - zc706 Xilinx
-- Tool Versions: 
-- Description: Synchronizing Signals for Start and STOP and controlling the counter.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: N\A
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity synchronizer is
     GENERIC(SIM_MODE : boolean := false);
     Port ( clk                  : in  STD_LOGIC;
            eom_i                : in  STD_LOGIC;
            nrst_i               : in  STD_LOGIC;
            sync_signals_i       : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
            StoreFirstPiece_en_o : out STD_LOGIC;
            StoreLastPiece_en_o  : out STD_LOGIC;
            cnt_en_o             : out STD_LOGIC);
end synchronizer;

architecture Behavioral of synchronizer is

--ATTRIBUTE keep_hierarchy 	            : string;                 -- Keep Hierarchy to specify FPGA optimization
--ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization

-- STATES
signal DELAY_LINE_Filling, DELAY_LINE_Emptying, DELAY_LINE_Full   : STD_LOGIC  := '0'; 

type state_type is (
                STATE_IDLE,         -- Do nothing till hit detection           
                STATE_FILLING_DETECTED,      -- Delay line is FILLING
                STATE_FULL_DETECTED,         -- Delay line is FULL
                STATE_EMPTYING_DETECTED,    -- Delay line is EMPTYING
                PROCESSING);
                
                
signal state, next_state : state_type:= STATE_IDLE;

begin


SYNC_PROCESS: process(clk)   -- Synchronus States
    begin
    
    if(rising_edge(clk)) then
        if(nrst_i = '0') then -- Active low
            state <= STATE_IDLE;
        else
            state <= next_state;
        end if;
    
    end if;
    
    end process;


FiniteSM_NextState: process(state, sync_signals_i, eom_i)
begin  
    
    case (state) is
        when STATE_IDLE         =>
        
            if  sync_signals_i = "01" then
                next_state <= STATE_FILLING_DETECTED; -- DELAY LINE IS FILLING
            else 
                next_state <= state;
            end if;
        
        when STATE_FILLING_DETECTED      =>
               
            if  sync_signals_i = "11" or sync_signals_i = "01" then -- DELAY LINE IS FILLING or FILLING
                next_state <= STATE_FULL_DETECTED;
            elsif  sync_signals_i = "10" then
                next_state <= STATE_EMPTYING_DETECTED; -- DELAY LINE IS EMPTYING
            else
                next_state <= STATE_IDLE;
            end if;
            
        when STATE_FULL_DETECTED         =>
            if sync_signals_i = "11" or sync_signals_i = "01"then
                next_state <= state;
            elsif sync_signals_i = "10" then
                next_state <= STATE_EMPTYING_DETECTED;
            else
                next_state <= STATE_IDLE; 
            end if;
            
        when STATE_EMPTYING_DETECTED     =>
            
            next_state <= PROCESSING;
            
        when PROCESSING         =>    
                if(eom_i = '1') then
                    next_state <= STATE_IDLE;
                else
                    next_state <= state;
                end if;
        when others =>
               next_state <= STATE_IDLE;
    end case;
end process;


OUTPUT_OF_STATE: process(state, sync_signals_i) --Combinatorial Logic;
begin
    
    case (state) is
    
        when STATE_IDLE         =>           
            DELAY_LINE_Full     <= '0';
            DELAY_LINE_Emptying <= '0';          
            
            if sync_signals_i = "01" then
                DELAY_LINE_Filling <= '1';
            else
                DELAY_LINE_Filling <= '0';
            end if;
            
        when STATE_FILLING_DETECTED      =>
            DELAY_LINE_Filling <= '0';
            
            if sync_signals_i = "01" or sync_signals_i = "11" then -- FILLING OR EMPTY
                DELAY_LINE_Full     <= '1';
                DELAY_LINE_Emptying <= '0';
            
            elsif sync_signals_i = "10" then
                DELAY_LINE_Full     <= '0';
                DELAY_LINE_Emptying <= '1';
            
            else
                DELAY_LINE_Full <= '0';
                DELAY_LINE_Emptying <= '0';
            end if;
            
        when STATE_FULL_DETECTED        =>
            DELAY_LINE_Filling <= '0';
            
            
            if sync_signals_i = "11" then                
                DELAY_LINE_Full <= '1';
                DELAY_LINE_Emptying <= '0';  
            elsif sync_signals_i = "10" then                
                DELAY_LINE_Emptying <= '1'; 
                DELAY_LINE_Full <= '0';  
            else
                DELAY_LINE_Emptying <= '0'; 
            end if;               
           
        when others =>
            DELAY_LINE_Full     <= '0';
            DELAY_LINE_Emptying <= '0';
            DELAY_LINE_Filling  <= '0';
    end case;

end process; 



-- OUTPUT SIGNALS
StoreFirstPiece_en_o <= DELAY_LINE_Filling;
StoreLastPiece_en_o  <= DELAY_LINE_Emptying;
cnt_en_o             <= DELAY_LINE_Full;

end Behavioral;
