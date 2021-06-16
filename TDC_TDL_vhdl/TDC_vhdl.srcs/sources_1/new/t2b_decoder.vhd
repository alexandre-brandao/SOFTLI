----------------------------------------------------------------------------------
-- Company: N\A
-- Engineer: Alexandre Brandao
 
-- Create Date: 02/26/2021 07:29:05 PM
-- Design Name: 
-- Module Name: t2b_decoder - Behavioral
-- Project Name: 
-- Target Devices: zc706 zynq 7 series processor
-- Tool Versions: 
-- Description: thermometer code decoder
 
-- Dependencies: 
 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: 
 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.MATH_REAL.ALL;

entity t2b_decoder is
    Generic ( NUM_STAGES      : integer := 560;
              BIN_CODE_BUS_WIDTH : integer := 8);
              -- 560/4 = 140 which is bigger than 128, therefore, minimum number is 256(8bits bus)
    Port (  thermometer_start_i     : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
            thermometer_stop_i      : in  STD_LOGIC_VECTOR( (NUM_STAGES/4) -1 DOWNTO 0);
            binary_FirstPiece_o     : out STD_LOGIC_VECTOR(BIN_CODE_BUS_WIDTH-1 DOWNTO 0);
            binary_LastPiece_o      : out STD_LOGIC_VECTOR(BIN_CODE_BUS_WIDTH-1 DOWNTO 0);
            valid_FirstPieceTherm_i : in  STD_LOGIC;
            valid_LastPieceTherm_i  : in  STD_LOGIC;
            ready_FirstPieceBin_o   : out STD_LOGIC;
            ready_LastPieceBin_o    : out STD_LOGIC;
            nrst                    : in  STD_LOGIC;
            clk                     : in  STD_LOGIC
    );
    
end t2b_decoder;

architecture Behavioral of t2b_decoder is

COMPONENT Thermo2Bin_pipeline IS
	GENERIC (
		b 		 : INTEGER
		);
    PORT (
		clock   : IN  std_logic;
		reset 	: IN  std_logic;
		valid 	: IN  std_logic;
		ready   : OUT std_logic;
		thermo  : IN  std_logic_vector(((2**b)-1) DOWNTO 0);
		bin     : OUT std_logic_vector((b-1) DOWNTO 0));
END COMPONENT Thermo2Bin_pipeline;

ATTRIBUTE keep_hierarchy 	: string;                             -- Keep Hierarchy to specify FPGA optimization
ATTRIBUTE keep_hierarchy OF Behavioral	: ARCHITECTURE IS "true"; -- Reject FPGA optimization

constant NUM_STAGES_PER_CARRY4 : integer := NUM_STAGES/4;

signal thermo_extend_start, thermo_extend_stop : std_logic_vector((2**BIN_CODE_BUS_WIDTH)-1 downto 0) := (others => '0');
signal count_ones_start, count_ones_stop : std_logic_vector(BIN_CODE_BUS_WIDTH-1 downto 0) := (others => '0');
signal conversion_start_finished, conversion_stop_finished : std_logic := '0';
signal reset : std_logic := '0';
    
    function reverse_vector (a: in std_logic_vector)
    return std_logic_vector is
      variable result: std_logic_vector(a'RANGE);
      alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
    begin
      for i in aa'RANGE loop
        result(i) := aa(i);
      end loop;
      return result;
    end function reverse_vector;

  
begin
    reset <= not nrst;
    thermo_extend_start(thermometer_start_i'length-1 downto 0) <= thermometer_start_i;
    thermo_extend_stop(thermometer_stop_i'length  -1 downto 0) <= reverse_vector(thermometer_stop_i);
    
 COUNT_NUMBER_OF_ONES:
   Thermo2Bin_pipeline 
	GENERIC MAP (
		b   => BIN_CODE_BUS_WIDTH    		 
		)
    PORT MAP (
		clock   => clk,
		reset 	=> reset,
		valid 	=> valid_FirstPieceTherm_i,
		ready   => ready_FirstPieceBin_o,
		thermo  => thermo_extend_start,
		bin     => count_ones_start
		);

 COUNT_NUMBER_OF_ZEROS:
   Thermo2Bin_pipeline 
	GENERIC MAP (
		b   => BIN_CODE_BUS_WIDTH  		 
		)
    PORT MAP (
		clock   => clk,
		reset 	=> reset,
		valid 	=> valid_LastPieceTherm_i,
		ready   => ready_LastPieceBin_o,
		thermo  => thermo_extend_stop,
		bin     => count_ones_stop
		);
				
		
binary_FirstPiece_o <= count_ones_start;
binary_LastPiece_o <= std_logic_vector((NUM_STAGES_PER_CARRY4) - unsigned(count_ones_stop));

end Behavioral;
