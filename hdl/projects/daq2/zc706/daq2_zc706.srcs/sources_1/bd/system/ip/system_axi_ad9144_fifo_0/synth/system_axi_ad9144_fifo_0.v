// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: analog.com:user:util_dacfifo:1.0
// IP Revision: 1

(* X_CORE_INFO = "util_dacfifo,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "system_axi_ad9144_fifo_0,util_dacfifo,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_ad9144_fifo_0 (
  dma_clk,
  dma_rst,
  dma_valid,
  dma_data,
  dma_ready,
  dma_xfer_req,
  dma_xfer_last,
  dac_clk,
  dac_rst,
  dac_valid,
  dac_data,
  dac_dunf,
  dac_xfer_out,
  bypass
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_clk, ASSOCIATED_RESET dma_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dma_clk CLK" *)
input wire dma_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dma_rst RST" *)
input wire dma_rst;
input wire dma_valid;
input wire [127 : 0] dma_data;
output wire dma_ready;
input wire dma_xfer_req;
input wire dma_xfer_last;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_clk, ASSOCIATED_RESET dac_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_daq2_xcvr_0_tx_out_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac_clk CLK" *)
input wire dac_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dac_rst RST" *)
input wire dac_rst;
input wire dac_valid;
output wire [127 : 0] dac_data;
output wire dac_dunf;
output wire dac_xfer_out;
input wire bypass;

  util_dacfifo #(
    .ADDRESS_WIDTH(16),
    .DATA_WIDTH(128)
  ) inst (
    .dma_clk(dma_clk),
    .dma_rst(dma_rst),
    .dma_valid(dma_valid),
    .dma_data(dma_data),
    .dma_ready(dma_ready),
    .dma_xfer_req(dma_xfer_req),
    .dma_xfer_last(dma_xfer_last),
    .dac_clk(dac_clk),
    .dac_rst(dac_rst),
    .dac_valid(dac_valid),
    .dac_data(dac_data),
    .dac_dunf(dac_dunf),
    .dac_xfer_out(dac_xfer_out),
    .bypass(bypass)
  );
endmodule
