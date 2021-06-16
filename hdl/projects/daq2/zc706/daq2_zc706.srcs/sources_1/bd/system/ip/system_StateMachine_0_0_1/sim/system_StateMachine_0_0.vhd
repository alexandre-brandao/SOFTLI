-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:StateMachine:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_StateMachine_0_0 IS
  PORT (
    Capture : IN STD_LOGIC;
    Ready : OUT STD_LOGIC;
    val_info : IN STD_LOGIC;
    Reset_in : IN STD_LOGIC;
    wraparound : IN STD_LOGIC;
    Write_Enable : OUT STD_LOGIC;
    Reset_out : OUT STD_LOGIC;
    Clk : IN STD_LOGIC
  );
END system_StateMachine_0_0;

ARCHITECTURE system_StateMachine_0_0_arch OF system_StateMachine_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_StateMachine_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT StateMachine IS
    PORT (
      Capture : IN STD_LOGIC;
      Ready : OUT STD_LOGIC;
      val_info : IN STD_LOGIC;
      Reset_in : IN STD_LOGIC;
      wraparound : IN STD_LOGIC;
      Write_Enable : OUT STD_LOGIC;
      Reset_out : OUT STD_LOGIC;
      Clk : IN STD_LOGIC
    );
  END COMPONENT StateMachine;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_StateMachine_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_daq2_xcvr_0_rx_out_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset_out: SIGNAL IS "XIL_INTERFACENAME Reset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset_out: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset_out RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset_in: SIGNAL IS "XIL_INTERFACENAME Reset_in, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset_in: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset_in RST";
BEGIN
  U0 : StateMachine
    PORT MAP (
      Capture => Capture,
      Ready => Ready,
      val_info => val_info,
      Reset_in => Reset_in,
      wraparound => wraparound,
      Write_Enable => Write_Enable,
      Reset_out => Reset_out,
      Clk => Clk
    );
END system_StateMachine_0_0_arch;