----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandão
-- 
-- Create Date: 03/01/2021 03:49:13 PM
-- Design Name: 
-- Module Name: TDC_SIM_TB - Behavioral
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

library UNISIM;
use UNISIM.VComponents.all;

entity TDC_SIM_TB is
end TDC_SIM_TB;

architecture Behavioral of TDC_SIM_TB is

  -- Declare constants
   -- clock period (500 MHz)
  constant clk_period : time    := 2ns;
  
  -- Num of taps
  constant num_stages : integer := 240;--180;
  
  -- Delay PS per TAP
  constant tap_delay : integer := 50;
  
  -- Declare UUT TB signals
  -- Inputs
  signal clock                        : STD_LOGIC := '0';
  signal s_nrst_i                     : STD_LOGIC := '0';
  signal s_stop_i                     : STD_LOGIC := '0';
  signal s_start_i                    : STD_LOGIC := '0';
  signal s_en_tdc_i                   : STD_LOGIC := '0';
  signal s_wr_en_o                    : STD_LOGIC;               
  signal s_measurement_o              : STD_LOGIC_VECTOR (20 downto 0);
--  signal s_cal_val_o                  : STD_LOGIC_VECTOR (7 downto 0);
  -- Outputs
  signal s_max_cnt_o : STD_LOGIC;
  
  -- Instantiate component 
 COMPONENT tdc IS
           Generic (NUM_STAGES               : integer := num_stages;
                    RUN_SIMULATION           : boolean := true;
                    SIMULATED_TAP_DELAY_PS   : integer := 45);
             
            Port ( clk_i         : in STD_LOGIC;
                   nrst_i        : in STD_LOGIC;
                   en_tdc_i      : in STD_LOGIC;
                   start_i       : in STD_LOGIC;
                   stop_i        : in STD_LOGIC;
                   measurement_o : out STD_LOGIC_VECTOR (20 downto 0);
                   valid_o       : out STD_LOGIC);

  END COMPONENT tdc;
 
  
begin
    -- Instantiate UUT : error
    uut: tdc
    GENERIC MAP ( NUM_STAGES     => num_stages,
                  RUN_SIMULATION => true,
                  SIMULATED_TAP_DELAY_PS =>tap_delay)
    PORT MAP(
               clk_i                      => clock,
               en_tdc_i                   => s_en_tdc_i,
               start_i                    => s_start_i,
               stop_i                     => s_stop_i,
               nrst_i                     => s_nrst_i,      
               measurement_o              => s_measurement_o,
               valid_o                    => s_wr_en_o
            );
    
    -- Clock process
    clk_process: PROCESS 
    begin
        clock <= '1';
        wait for clk_period/2;
        clock <= '0';
        wait for clk_period/2;
    end process;
    
    run_uut_checker: PROCESS
    begin
        s_nrst_i   <= '1';
        s_stop_i   <= '0';
        s_start_i  <= '0';
        s_en_tdc_i <= '0';
        wait for  clk_period;
        
        s_en_tdc_i <= '1';
        wait for clk_period;
        
        s_nrst_i   <= '1';
        wait for clk_period;
        
        s_nrst_i   <= '1';
        wait for 1.3*clk_period;
 
        s_start_i  <= '1';
        wait for 2.3*clk_period;
        
        s_start_i  <= '0';
       -- wait for 7.45*clk_period;
        wait for 7.70*clk_period;
        
        s_stop_i   <= '1';
        wait for 2.23*clk_period;
        
        s_stop_i   <= '0';
        wait for 2*clk_period;
        
        --- Next wave
        
        wait for 16 *clk_period;
        wait for 0.1 *clk_period;
        s_start_i  <= '1';
        
        wait for 0.75 * clk_period;
        s_start_i  <= '0';
        
        --wait for 1*clk_period;
        s_stop_i   <= '1';
        
        wait for 1*clk_period; 
        s_stop_i   <= '0';
        
        wait for 3*clk_period;
      
        
        wait for 10*clk_period;
        
        s_en_tdc_i <= '0';
    
    end PROCESS;
    



end Behavioral;
