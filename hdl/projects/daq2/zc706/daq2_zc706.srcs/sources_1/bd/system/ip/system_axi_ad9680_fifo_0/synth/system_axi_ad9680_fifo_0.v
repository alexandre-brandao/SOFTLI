// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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


// IP VLNV: analog.com:user:axi_adcfifo:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi_adcfifo,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "system_axi_ad9680_fifo_0,axi_adcfifo,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_ad9680_fifo_0 (
  adc_rst,
  adc_clk,
  adc_wr,
  adc_wdata,
  adc_wovf,
  dma_clk,
  dma_wr,
  dma_wdata,
  dma_wready,
  dma_xfer_req,
  dma_xfer_status,
  axi_clk,
  axi_resetn,
  axi_awvalid,
  axi_awid,
  axi_awburst,
  axi_awlock,
  axi_awcache,
  axi_awprot,
  axi_awqos,
  axi_awuser,
  axi_awlen,
  axi_awsize,
  axi_awaddr,
  axi_awready,
  axi_wvalid,
  axi_wdata,
  axi_wstrb,
  axi_wlast,
  axi_wuser,
  axi_wready,
  axi_bvalid,
  axi_bid,
  axi_bresp,
  axi_buser,
  axi_bready,
  axi_arvalid,
  axi_arid,
  axi_arburst,
  axi_arlock,
  axi_arcache,
  axi_arprot,
  axi_arqos,
  axi_aruser,
  axi_arlen,
  axi_arsize,
  axi_araddr,
  axi_arready,
  axi_rvalid,
  axi_rid,
  axi_ruser,
  axi_rresp,
  axi_rlast,
  axi_rdata,
  axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 adc_rst RST" *)
input wire adc_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, ASSOCIATED_RESET adc_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_daq2_xcvr_0_rx_out_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *)
input wire adc_clk;
input wire adc_wr;
input wire [127 : 0] adc_wdata;
output wire adc_wovf;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dma_clk CLK" *)
input wire dma_clk;
output wire dma_wr;
output wire [63 : 0] dma_wdata;
input wire dma_wready;
input wire dma_xfer_req;
output wire [3 : 0] dma_xfer_status;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF axi, ASSOCIATED_RESET axi_resetn, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN system_axi_ddr_cntrl_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
input wire axi_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_resetn RST" *)
input wire axi_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWVALID" *)
output wire axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWID" *)
output wire [3 : 0] axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWBURST" *)
output wire [1 : 0] axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWLOCK" *)
output wire axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWCACHE" *)
output wire [3 : 0] axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWPROT" *)
output wire [2 : 0] axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWQOS" *)
output wire [3 : 0] axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWUSER" *)
output wire [3 : 0] axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWLEN" *)
output wire [7 : 0] axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWSIZE" *)
output wire [2 : 0] axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWADDR" *)
output wire [31 : 0] axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWREADY" *)
input wire axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WVALID" *)
output wire axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WDATA" *)
output wire [511 : 0] axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WSTRB" *)
output wire [63 : 0] axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WLAST" *)
output wire axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WUSER" *)
output wire [3 : 0] axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WREADY" *)
input wire axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BVALID" *)
input wire axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BID" *)
input wire [3 : 0] axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BRESP" *)
input wire [1 : 0] axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BUSER" *)
input wire [3 : 0] axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BREADY" *)
output wire axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARVALID" *)
output wire axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARID" *)
output wire [3 : 0] axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARBURST" *)
output wire [1 : 0] axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARLOCK" *)
output wire axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARCACHE" *)
output wire [3 : 0] axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARPROT" *)
output wire [2 : 0] axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARQOS" *)
output wire [3 : 0] axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARUSER" *)
output wire [3 : 0] axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARLEN" *)
output wire [7 : 0] axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARSIZE" *)
output wire [2 : 0] axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARADDR" *)
output wire [31 : 0] axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARREADY" *)
input wire axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RVALID" *)
input wire axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RID" *)
input wire [3 : 0] axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RUSER" *)
input wire [3 : 0] axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RRESP" *)
input wire [1 : 0] axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RLAST" *)
input wire axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RDATA" *)
input wire [511 : 0] axi_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 4, RUSER_WIDTH 4, BUSER_WIDTH 4, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN system_axi_ddr_cntrl_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RREADY" *)
output wire axi_rready;

  axi_adcfifo #(
    .ADC_DATA_WIDTH(128),
    .DMA_DATA_WIDTH(64),
    .AXI_DATA_WIDTH(512),
    .DMA_READY_ENABLE(1),
    .AXI_SIZE(6),
    .AXI_LENGTH(4),
    .AXI_ADDRESS(32'H80000000),
    .AXI_ADDRESS_LIMIT(32'Ha0000000)
  ) inst (
    .adc_rst(adc_rst),
    .adc_clk(adc_clk),
    .adc_wr(adc_wr),
    .adc_wdata(adc_wdata),
    .adc_wovf(adc_wovf),
    .dma_clk(dma_clk),
    .dma_wr(dma_wr),
    .dma_wdata(dma_wdata),
    .dma_wready(dma_wready),
    .dma_xfer_req(dma_xfer_req),
    .dma_xfer_status(dma_xfer_status),
    .axi_clk(axi_clk),
    .axi_resetn(axi_resetn),
    .axi_awvalid(axi_awvalid),
    .axi_awid(axi_awid),
    .axi_awburst(axi_awburst),
    .axi_awlock(axi_awlock),
    .axi_awcache(axi_awcache),
    .axi_awprot(axi_awprot),
    .axi_awqos(axi_awqos),
    .axi_awuser(axi_awuser),
    .axi_awlen(axi_awlen),
    .axi_awsize(axi_awsize),
    .axi_awaddr(axi_awaddr),
    .axi_awready(axi_awready),
    .axi_wvalid(axi_wvalid),
    .axi_wdata(axi_wdata),
    .axi_wstrb(axi_wstrb),
    .axi_wlast(axi_wlast),
    .axi_wuser(axi_wuser),
    .axi_wready(axi_wready),
    .axi_bvalid(axi_bvalid),
    .axi_bid(axi_bid),
    .axi_bresp(axi_bresp),
    .axi_buser(axi_buser),
    .axi_bready(axi_bready),
    .axi_arvalid(axi_arvalid),
    .axi_arid(axi_arid),
    .axi_arburst(axi_arburst),
    .axi_arlock(axi_arlock),
    .axi_arcache(axi_arcache),
    .axi_arprot(axi_arprot),
    .axi_arqos(axi_arqos),
    .axi_aruser(axi_aruser),
    .axi_arlen(axi_arlen),
    .axi_arsize(axi_arsize),
    .axi_araddr(axi_araddr),
    .axi_arready(axi_arready),
    .axi_rvalid(axi_rvalid),
    .axi_rid(axi_rid),
    .axi_ruser(axi_ruser),
    .axi_rresp(axi_rresp),
    .axi_rlast(axi_rlast),
    .axi_rdata(axi_rdata),
    .axi_rready(axi_rready)
  );
endmodule
