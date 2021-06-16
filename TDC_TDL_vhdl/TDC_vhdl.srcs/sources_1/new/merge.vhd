----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alexandre Brandao
-- 
-- Create Date: 02/27/2021 06:16:10 PM
-- Design Name: 
-- Module Name: merge - Behavioral
-- Project Name: 
-- Target Devices: Zynq 7 series ZC706
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - Fixed an issue where the signal eom_r would not update properly.
-- Additional Comments:
-- 
-- Extensions in names
-- r - register    | i - input
-- w - wire        | o - output
-- s - signal      | int - integer
-- fe- falling edge| re  - rising edge
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity merge is
    generic(FINE_BUS_WIDTH: integer := 8;
            SIMULATION    : boolean := false;
            TAP_DELAY_PS  : integer := 31);
            
     Port ( clk_i                   : in  STD_LOGIC;
            valid_bin_FirstPiece    : in  STD_LOGIC;
            valid_bin_LastPiece     : in  STD_LOGIC;
            nrst_i                  : in  STD_LOGIC;
            coarse_cnt_i            : in  STD_LOGIC_VECTOR(9 downto 0);
            fine_bin_FirstPiece_i   : in  STD_LOGIC_VECTOR(FINE_BUS_WIDTH-1 downto 0);
            fine_bin_LastPiece_i    : in  STD_LOGIC_VECTOR(FINE_BUS_WIDTH-1 downto 0);        
            tdc_measure_o           : out STD_LOGIC_VECTOR(20 downto 0);
            eom_o                   : out STD_LOGIC
          );
end merge;

architecture Behavioral of merge is

--
ATTRIBUTE USE_DSP48 : string;
ATTRIBUTE USE_DSP48 of Behavioral : architecture is "NO"; -- DENY the usage of the DSP in this architecture

ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization
--------------------------------------
constant bus_width_measure : integer := 21;
constant eom_r_bus_width   : integer := 6;
constant tap_delay         : integer := TAP_DELAY_PS;

signal s_en_merge_r        : std_logic := '0';
signal s_eom_r             : std_logic := '0';
signal s_delay             : std_logic_vector(eom_r_bus_width-1 downto 0) := (others => '0');

signal eom_nrst_w: std_logic;

--STORE COARSE AND FINE MEASUREMENTS TO CORRECT TIMING VIOLATIONS
signal coarse_cnt_r : std_logic_vector(9 downto 0) := (others => '0');
signal fine_start_r, fine_stop_r : std_logic_vector(FINE_BUS_WIDTH-1 downto 0) := (others => '0');

signal s_tdc_measure_ps_w  : std_logic_vector(bus_width_measure-1 downto 0) := (others => '0');
signal s_tdc_measure_ps_r  : std_logic_vector(bus_width_measure-1 downto 0) := (others => '0');


begin

-- END OF MEASUREMENT RESET CONDITIONS

process(clk_i)
begin
    if rising_edge(clk_i) then
        eom_nrst_w <= nrst_i and not s_eom_r;
    end if;
end process;

process(clk_i, eom_nrst_w, valid_bin_FirstPiece,valid_bin_LastPiece)
begin 
    if eom_nrst_w = '0' then
            coarse_cnt_r <= (others => '0');
            fine_start_r <= (others => '0');
            fine_stop_r  <= (others => '0');
            s_en_merge_r <= '0';
    elsif(rising_edge(clk_i)) then
            if(valid_bin_FirstPiece = '1' and valid_bin_LastPiece = '1') then
                coarse_cnt_r  <= coarse_cnt_i;
                fine_start_r <= fine_bin_FirstPiece_i;
                fine_stop_r  <= fine_bin_LastPiece_i;
                s_en_merge_r <= '1';
            end if;
    end if;
end process;

SIM_OP: IF  SIMULATION  = TRUE GENERATE
begin
    -- ARITHMETIC_OPERATION
    s_tdc_measure_ps_w <= std_logic_vector(
        to_unsigned( 
        (to_integer(unsigned(fine_start_r)) - to_integer(unsigned(fine_stop_r)))*tap_delay -- (Nones-Nzeros) * Tap_delay
        + to_integer(unsigned(coarse_cnt_r))*2000                                          -- N * clock_period
        , bus_width_measure)) after 7.3ns;
end generate;

NON_SIM_OP: IF  SIMULATION  = FALSE GENERATE
begin

-- ARITHMETIC_OPERATION
s_tdc_measure_ps_w <= std_logic_vector(
    to_unsigned( 
    (to_integer(unsigned(fine_start_r)) - to_integer(unsigned(fine_stop_r)))*tap_delay -- (Nones-Nzeros) * Tap_delay
    + to_integer(unsigned(coarse_cnt_r))*2000                                          -- N * clock_period
    , bus_width_measure));

end generate;

STORE_VALUE_5ClockCyclesLater: 
process(clk_i, eom_nrst_w, s_delay)
begin
    if  eom_nrst_w = '0' then 
        s_eom_r <= '0';
    elsif rising_edge(clk_i) then
        if s_delay (5) = '1' then
            s_eom_r <= '1';    -- SET END OF MEASURE TO '1'            
            -- Stage 3 Piping
            s_tdc_measure_ps_r   <= s_tdc_measure_ps_w; -- N * T_clock + (Nones-Nzeros) * T_iodelay
        else 
            s_eom_r <= '0';
        end if;
    end if;
end process;


-- 2ns per count(2000ps@500Mhz)
-- 31ps per carry8
-- i suspect (maybe of about 50ps per Carry4 ZC706)
-- Note: according to multiple tests executed leads me to believe that in facts 50ps should be close to the actual value of 4 multiplexers cascaded
--);

process(clk_i, eom_nrst_w, s_en_merge_r)
begin
  if(eom_nrst_w = '0') then 
       s_delay  <= (others => '0');
           
    elsif rising_edge(clk_i)  then
        if s_en_merge_r = '1' then 
            s_delay (eom_r_bus_width-1 downto 0) <= s_delay (eom_r_bus_width-2 downto 0) & '1';
        end if;
    end if;
end process;

--------------------------------- OUTPUT SIGNALS ---------------------------------
tdc_measure_o    <= s_tdc_measure_ps_r;
eom_o            <= s_eom_r;

end Behavioral;
