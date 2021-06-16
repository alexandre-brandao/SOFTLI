--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Mar 17 15:34:13 2021
--Host        : DESKTOP-4JJ62M2 running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_ad9144_jesd_imp_1POUUDD is
  port (
    device_clk : in STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    sync : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysref : in STD_LOGIC;
    tx_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_data_tready : out STD_LOGIC;
    tx_data_tvalid : in STD_LOGIC;
    tx_phy0_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_phy0_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_phy1_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_phy1_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_phy2_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_phy2_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_phy3_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_phy3_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end axi_ad9144_jesd_imp_1POUUDD;

architecture STRUCTURE of axi_ad9144_jesd_imp_1POUUDD is
  component system_tx_axi_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    core_clk : in STD_LOGIC;
    core_reset_ext : in STD_LOGIC;
    core_reset : out STD_LOGIC;
    core_cfg_lanes_disable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    core_cfg_links_disable : out STD_LOGIC_VECTOR ( 0 to 0 );
    core_cfg_beats_per_multiframe : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_octets_per_frame : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_lmfc_offset : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_sysref_oneshot : out STD_LOGIC;
    core_cfg_sysref_disable : out STD_LOGIC;
    core_cfg_continuous_cgs : out STD_LOGIC;
    core_cfg_continuous_ilas : out STD_LOGIC;
    core_cfg_skip_ilas : out STD_LOGIC;
    core_cfg_mframes_per_ilas : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_disable_char_replacement : out STD_LOGIC;
    core_cfg_disable_scrambler : out STD_LOGIC;
    core_ilas_config_rd : in STD_LOGIC;
    core_ilas_config_addr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    core_ilas_config_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    core_event_sysref_alignment_error : in STD_LOGIC;
    core_event_sysref_edge : in STD_LOGIC;
    core_ctrl_manual_sync_request : out STD_LOGIC;
    core_status_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    core_status_sync : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_tx_axi_0;
  component system_tx_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    phy_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    phy_charisk : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sysref : in STD_LOGIC;
    lmfc_edge : out STD_LOGIC;
    lmfc_clk : out STD_LOGIC;
    sync : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_ready : out STD_LOGIC;
    tx_valid : in STD_LOGIC;
    cfg_lanes_disable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cfg_links_disable : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfg_beats_per_multiframe : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_octets_per_frame : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_lmfc_offset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_sysref_oneshot : in STD_LOGIC;
    cfg_sysref_disable : in STD_LOGIC;
    cfg_continuous_cgs : in STD_LOGIC;
    cfg_continuous_ilas : in STD_LOGIC;
    cfg_skip_ilas : in STD_LOGIC;
    cfg_mframes_per_ilas : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_disable_char_replacement : in STD_LOGIC;
    cfg_disable_scrambler : in STD_LOGIC;
    ilas_config_rd : out STD_LOGIC;
    ilas_config_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ilas_config_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ctrl_manual_sync_request : in STD_LOGIC;
    event_sysref_edge : out STD_LOGIC;
    event_sysref_alignment_error : out STD_LOGIC;
    status_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_state : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component system_tx_0;
  signal device_clk_1 : STD_LOGIC;
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal s_axi_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC;
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal sync_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sysref_1 : STD_LOGIC;
  signal tx_axi_core_reset : STD_LOGIC;
  signal tx_axi_irq : STD_LOGIC;
  signal tx_axi_tx_cfg_beats_per_multiframe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_axi_tx_cfg_continuous_cgs : STD_LOGIC;
  signal tx_axi_tx_cfg_continuous_ilas : STD_LOGIC;
  signal tx_axi_tx_cfg_disable_char_replacement : STD_LOGIC;
  signal tx_axi_tx_cfg_disable_scrambler : STD_LOGIC;
  signal tx_axi_tx_cfg_lanes_disable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_axi_tx_cfg_links_disable : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tx_axi_tx_cfg_lmfc_offset : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_axi_tx_cfg_mframes_per_ilas : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_axi_tx_cfg_octets_per_frame : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_axi_tx_cfg_skip_ilas : STD_LOGIC;
  signal tx_axi_tx_cfg_sysref_disable : STD_LOGIC;
  signal tx_axi_tx_cfg_sysref_oneshot : STD_LOGIC;
  signal tx_axi_tx_ctrl_manual_sync_request : STD_LOGIC;
  signal tx_data_1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal tx_data_1_TREADY : STD_LOGIC;
  signal tx_data_1_TVALID : STD_LOGIC;
  signal tx_tx_event_sysref_alignment_error : STD_LOGIC;
  signal tx_tx_event_sysref_edge : STD_LOGIC;
  signal tx_tx_ilas_config_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_tx_ilas_config_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal tx_tx_ilas_config_rd : STD_LOGIC;
  signal tx_tx_phy0_txcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_tx_phy0_txdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_tx_phy1_txcharisk : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tx_tx_phy1_txdata : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tx_tx_phy2_txcharisk : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tx_tx_phy2_txdata : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tx_tx_phy3_txcharisk : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal tx_tx_phy3_txdata : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tx_tx_status_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_tx_status_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tx_lmfc_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_tx_lmfc_edge_UNCONNECTED : STD_LOGIC;
begin
  device_clk_1 <= device_clk;
  irq <= tx_axi_irq;
  s_axi_1_ARADDR(13 downto 0) <= s_axi_araddr(13 downto 0);
  s_axi_1_ARPROT(2 downto 0) <= s_axi_arprot(2 downto 0);
  s_axi_1_ARVALID <= s_axi_arvalid;
  s_axi_1_AWADDR(13 downto 0) <= s_axi_awaddr(13 downto 0);
  s_axi_1_AWPROT(2 downto 0) <= s_axi_awprot(2 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_RREADY <= s_axi_rready;
  s_axi_1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  s_axi_1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
  s_axi_arready <= s_axi_1_ARREADY;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_rdata(31 downto 0) <= s_axi_1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= s_axi_1_RRESP(1 downto 0);
  s_axi_rvalid <= s_axi_1_RVALID;
  s_axi_wready <= s_axi_1_WREADY;
  sync_1(0) <= sync(0);
  sysref_1 <= sysref;
  tx_data_1_TDATA(127 downto 0) <= tx_data_tdata(127 downto 0);
  tx_data_1_TVALID <= tx_data_tvalid;
  tx_data_tready <= tx_data_1_TREADY;
  tx_phy0_txcharisk(3 downto 0) <= tx_tx_phy0_txcharisk(3 downto 0);
  tx_phy0_txdata(31 downto 0) <= tx_tx_phy0_txdata(31 downto 0);
  tx_phy1_txcharisk(3 downto 0) <= tx_tx_phy1_txcharisk(7 downto 4);
  tx_phy1_txdata(31 downto 0) <= tx_tx_phy1_txdata(63 downto 32);
  tx_phy2_txcharisk(3 downto 0) <= tx_tx_phy2_txcharisk(11 downto 8);
  tx_phy2_txdata(31 downto 0) <= tx_tx_phy2_txdata(95 downto 64);
  tx_phy3_txcharisk(3 downto 0) <= tx_tx_phy3_txcharisk(15 downto 12);
  tx_phy3_txdata(31 downto 0) <= tx_tx_phy3_txdata(127 downto 96);
tx: component system_tx_0
     port map (
      cfg_beats_per_multiframe(7 downto 0) => tx_axi_tx_cfg_beats_per_multiframe(7 downto 0),
      cfg_continuous_cgs => tx_axi_tx_cfg_continuous_cgs,
      cfg_continuous_ilas => tx_axi_tx_cfg_continuous_ilas,
      cfg_disable_char_replacement => tx_axi_tx_cfg_disable_char_replacement,
      cfg_disable_scrambler => tx_axi_tx_cfg_disable_scrambler,
      cfg_lanes_disable(3 downto 0) => tx_axi_tx_cfg_lanes_disable(3 downto 0),
      cfg_links_disable(0) => tx_axi_tx_cfg_links_disable(0),
      cfg_lmfc_offset(7 downto 0) => tx_axi_tx_cfg_lmfc_offset(7 downto 0),
      cfg_mframes_per_ilas(7 downto 0) => tx_axi_tx_cfg_mframes_per_ilas(7 downto 0),
      cfg_octets_per_frame(7 downto 0) => tx_axi_tx_cfg_octets_per_frame(7 downto 0),
      cfg_skip_ilas => tx_axi_tx_cfg_skip_ilas,
      cfg_sysref_disable => tx_axi_tx_cfg_sysref_disable,
      cfg_sysref_oneshot => tx_axi_tx_cfg_sysref_oneshot,
      clk => device_clk_1,
      ctrl_manual_sync_request => tx_axi_tx_ctrl_manual_sync_request,
      event_sysref_alignment_error => tx_tx_event_sysref_alignment_error,
      event_sysref_edge => tx_tx_event_sysref_edge,
      ilas_config_addr(1 downto 0) => tx_tx_ilas_config_addr(1 downto 0),
      ilas_config_data(127 downto 0) => tx_tx_ilas_config_data(127 downto 0),
      ilas_config_rd => tx_tx_ilas_config_rd,
      lmfc_clk => NLW_tx_lmfc_clk_UNCONNECTED,
      lmfc_edge => NLW_tx_lmfc_edge_UNCONNECTED,
      phy_charisk(15 downto 12) => tx_tx_phy3_txcharisk(15 downto 12),
      phy_charisk(11 downto 8) => tx_tx_phy2_txcharisk(11 downto 8),
      phy_charisk(7 downto 4) => tx_tx_phy1_txcharisk(7 downto 4),
      phy_charisk(3 downto 0) => tx_tx_phy0_txcharisk(3 downto 0),
      phy_data(127 downto 96) => tx_tx_phy3_txdata(127 downto 96),
      phy_data(95 downto 64) => tx_tx_phy2_txdata(95 downto 64),
      phy_data(63 downto 32) => tx_tx_phy1_txdata(63 downto 32),
      phy_data(31 downto 0) => tx_tx_phy0_txdata(31 downto 0),
      reset => tx_axi_core_reset,
      status_state(1 downto 0) => tx_tx_status_state(1 downto 0),
      status_sync(0) => tx_tx_status_sync(0),
      sync(0) => sync_1(0),
      sysref => sysref_1,
      tx_data(127 downto 0) => tx_data_1_TDATA(127 downto 0),
      tx_ready => tx_data_1_TREADY,
      tx_valid => tx_data_1_TVALID
    );
tx_axi: component system_tx_axi_0
     port map (
      core_cfg_beats_per_multiframe(7 downto 0) => tx_axi_tx_cfg_beats_per_multiframe(7 downto 0),
      core_cfg_continuous_cgs => tx_axi_tx_cfg_continuous_cgs,
      core_cfg_continuous_ilas => tx_axi_tx_cfg_continuous_ilas,
      core_cfg_disable_char_replacement => tx_axi_tx_cfg_disable_char_replacement,
      core_cfg_disable_scrambler => tx_axi_tx_cfg_disable_scrambler,
      core_cfg_lanes_disable(3 downto 0) => tx_axi_tx_cfg_lanes_disable(3 downto 0),
      core_cfg_links_disable(0) => tx_axi_tx_cfg_links_disable(0),
      core_cfg_lmfc_offset(7 downto 0) => tx_axi_tx_cfg_lmfc_offset(7 downto 0),
      core_cfg_mframes_per_ilas(7 downto 0) => tx_axi_tx_cfg_mframes_per_ilas(7 downto 0),
      core_cfg_octets_per_frame(7 downto 0) => tx_axi_tx_cfg_octets_per_frame(7 downto 0),
      core_cfg_skip_ilas => tx_axi_tx_cfg_skip_ilas,
      core_cfg_sysref_disable => tx_axi_tx_cfg_sysref_disable,
      core_cfg_sysref_oneshot => tx_axi_tx_cfg_sysref_oneshot,
      core_clk => device_clk_1,
      core_ctrl_manual_sync_request => tx_axi_tx_ctrl_manual_sync_request,
      core_event_sysref_alignment_error => tx_tx_event_sysref_alignment_error,
      core_event_sysref_edge => tx_tx_event_sysref_edge,
      core_ilas_config_addr(1 downto 0) => tx_tx_ilas_config_addr(1 downto 0),
      core_ilas_config_data(127 downto 0) => tx_tx_ilas_config_data(127 downto 0),
      core_ilas_config_rd => tx_tx_ilas_config_rd,
      core_reset => tx_axi_core_reset,
      core_reset_ext => '0',
      core_status_state(1 downto 0) => tx_tx_status_state(1 downto 0),
      core_status_sync(0) => tx_tx_status_sync(0),
      irq => tx_axi_irq,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(13 downto 0) => s_axi_1_ARADDR(13 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arprot(2 downto 0) => s_axi_1_ARPROT(2 downto 0),
      s_axi_arready => s_axi_1_ARREADY,
      s_axi_arvalid => s_axi_1_ARVALID,
      s_axi_awaddr(13 downto 0) => s_axi_1_AWADDR(13 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_1_AWPROT(2 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready => s_axi_1_RREADY,
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid => s_axi_1_RVALID,
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid => s_axi_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_ad9680_jesd_imp_9H50XX is
  port (
    device_clk : in STD_LOGIC;
    irq : out STD_LOGIC;
    phy_en_char_align : out STD_LOGIC;
    rx_data_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_data_tvalid : out STD_LOGIC;
    rx_eof : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy0_rxcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy0_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_phy0_rxdisperr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy0_rxnotintable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy1_rxcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy1_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_phy1_rxdisperr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy1_rxnotintable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy2_rxcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy2_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_phy2_rxdisperr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy2_rxnotintable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy3_rxcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy3_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_phy3_rxdisperr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_phy3_rxnotintable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_sof : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    sysref : in STD_LOGIC
  );
end axi_ad9680_jesd_imp_9H50XX;

architecture STRUCTURE of axi_ad9680_jesd_imp_9H50XX is
  component system_rx_axi_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    core_clk : in STD_LOGIC;
    core_reset_ext : in STD_LOGIC;
    core_reset : out STD_LOGIC;
    core_cfg_lanes_disable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    core_cfg_links_disable : out STD_LOGIC_VECTOR ( 0 to 0 );
    core_cfg_beats_per_multiframe : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_octets_per_frame : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_disable_scrambler : out STD_LOGIC;
    core_cfg_disable_char_replacement : out STD_LOGIC;
    core_cfg_lmfc_offset : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_cfg_sysref_oneshot : out STD_LOGIC;
    core_cfg_sysref_disable : out STD_LOGIC;
    core_cfg_buffer_early_release : out STD_LOGIC;
    core_cfg_buffer_delay : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_ilas_config_valid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    core_ilas_config_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    core_ilas_config_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    core_event_sysref_alignment_error : in STD_LOGIC;
    core_event_sysref_edge : in STD_LOGIC;
    core_ctrl_err_statistics_mask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    core_ctrl_err_statistics_reset : out STD_LOGIC;
    core_status_err_statistics_cnt : in STD_LOGIC_VECTOR ( 127 downto 0 );
    core_status_ctrl_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    core_status_lane_cgs_state : in STD_LOGIC_VECTOR ( 7 downto 0 );
    core_status_lane_ifs_ready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    core_status_lane_latency : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  end component system_rx_axi_0;
  component system_rx_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    phy_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    phy_charisk : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phy_notintable : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phy_disperr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sysref : in STD_LOGIC;
    lmfc_edge : out STD_LOGIC;
    lmfc_clk : out STD_LOGIC;
    event_sysref_alignment_error : out STD_LOGIC;
    event_sysref_edge : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    phy_en_char_align : out STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_valid : out STD_LOGIC;
    rx_eof : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_sof : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cfg_lanes_disable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cfg_links_disable : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfg_beats_per_multiframe : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_octets_per_frame : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_lmfc_offset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_sysref_disable : in STD_LOGIC;
    cfg_sysref_oneshot : in STD_LOGIC;
    cfg_buffer_early_release : in STD_LOGIC;
    cfg_buffer_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_disable_char_replacement : in STD_LOGIC;
    cfg_disable_scrambler : in STD_LOGIC;
    ctrl_err_statistics_reset : in STD_LOGIC;
    ctrl_err_statistics_mask : in STD_LOGIC_VECTOR ( 2 downto 0 );
    status_err_statistics_cnt : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ilas_config_valid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ilas_config_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ilas_config_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    status_ctrl_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    status_lane_cgs_state : out STD_LOGIC_VECTOR ( 7 downto 0 );
    status_lane_ifs_ready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    status_lane_latency : out STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  end component system_rx_0;
  signal device_clk_1 : STD_LOGIC;
  signal rx_axi_core_reset : STD_LOGIC;
  signal rx_axi_irq : STD_LOGIC;
  signal rx_axi_rx_cfg_beats_per_multiframe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_axi_rx_cfg_buffer_delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_axi_rx_cfg_buffer_early_release : STD_LOGIC;
  signal rx_axi_rx_cfg_disable_char_replacement : STD_LOGIC;
  signal rx_axi_rx_cfg_disable_scrambler : STD_LOGIC;
  signal rx_axi_rx_cfg_err_statistics_mask : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rx_axi_rx_cfg_err_statistics_reset : STD_LOGIC;
  signal rx_axi_rx_cfg_lanes_disable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_axi_rx_cfg_links_disable : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_axi_rx_cfg_lmfc_offset : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_axi_rx_cfg_octets_per_frame : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_axi_rx_cfg_sysref_disable : STD_LOGIC;
  signal rx_axi_rx_cfg_sysref_oneshot : STD_LOGIC;
  signal rx_phy0_1_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy0_1_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_phy0_1_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy0_1_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy1_1_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy1_1_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_phy1_1_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy1_1_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy2_1_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy2_1_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_phy2_1_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy2_1_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy3_1_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy3_1_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_phy3_1_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy3_1_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_phy_en_char_align : STD_LOGIC;
  signal rx_rx_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal rx_rx_eof : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_rx_event_sysref_alignment_error : STD_LOGIC;
  signal rx_rx_event_sysref_edge : STD_LOGIC;
  signal rx_rx_ilas_config_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_rx_ilas_config_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal rx_rx_ilas_config_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_rx_sof : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_rx_status_ctrl_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_rx_status_err_statistics_cnt : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal rx_rx_status_lane_cgs_state : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_rx_status_lane_ifs_ready : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_rx_status_lane_latency : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal rx_rx_valid : STD_LOGIC;
  signal rx_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal s_axi_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC;
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal sysref_1 : STD_LOGIC;
  signal NLW_rx_lmfc_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_lmfc_edge_UNCONNECTED : STD_LOGIC;
begin
  device_clk_1 <= device_clk;
  irq <= rx_axi_irq;
  phy_en_char_align <= rx_phy_en_char_align;
  rx_data_tdata(127 downto 0) <= rx_rx_data(127 downto 0);
  rx_data_tvalid <= rx_rx_valid;
  rx_eof(3 downto 0) <= rx_rx_eof(3 downto 0);
  rx_phy0_1_rxcharisk(3 downto 0) <= rx_phy0_rxcharisk(3 downto 0);
  rx_phy0_1_rxdata(31 downto 0) <= rx_phy0_rxdata(31 downto 0);
  rx_phy0_1_rxdisperr(3 downto 0) <= rx_phy0_rxdisperr(3 downto 0);
  rx_phy0_1_rxnotintable(3 downto 0) <= rx_phy0_rxnotintable(3 downto 0);
  rx_phy1_1_rxcharisk(3 downto 0) <= rx_phy1_rxcharisk(3 downto 0);
  rx_phy1_1_rxdata(31 downto 0) <= rx_phy1_rxdata(31 downto 0);
  rx_phy1_1_rxdisperr(3 downto 0) <= rx_phy1_rxdisperr(3 downto 0);
  rx_phy1_1_rxnotintable(3 downto 0) <= rx_phy1_rxnotintable(3 downto 0);
  rx_phy2_1_rxcharisk(3 downto 0) <= rx_phy2_rxcharisk(3 downto 0);
  rx_phy2_1_rxdata(31 downto 0) <= rx_phy2_rxdata(31 downto 0);
  rx_phy2_1_rxdisperr(3 downto 0) <= rx_phy2_rxdisperr(3 downto 0);
  rx_phy2_1_rxnotintable(3 downto 0) <= rx_phy2_rxnotintable(3 downto 0);
  rx_phy3_1_rxcharisk(3 downto 0) <= rx_phy3_rxcharisk(3 downto 0);
  rx_phy3_1_rxdata(31 downto 0) <= rx_phy3_rxdata(31 downto 0);
  rx_phy3_1_rxdisperr(3 downto 0) <= rx_phy3_rxdisperr(3 downto 0);
  rx_phy3_1_rxnotintable(3 downto 0) <= rx_phy3_rxnotintable(3 downto 0);
  rx_sof(3 downto 0) <= rx_rx_sof(3 downto 0);
  s_axi_1_ARADDR(13 downto 0) <= s_axi_araddr(13 downto 0);
  s_axi_1_ARPROT(2 downto 0) <= s_axi_arprot(2 downto 0);
  s_axi_1_ARVALID <= s_axi_arvalid;
  s_axi_1_AWADDR(13 downto 0) <= s_axi_awaddr(13 downto 0);
  s_axi_1_AWPROT(2 downto 0) <= s_axi_awprot(2 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_RREADY <= s_axi_rready;
  s_axi_1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  s_axi_1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
  s_axi_arready <= s_axi_1_ARREADY;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_rdata(31 downto 0) <= s_axi_1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= s_axi_1_RRESP(1 downto 0);
  s_axi_rvalid <= s_axi_1_RVALID;
  s_axi_wready <= s_axi_1_WREADY;
  sync(0) <= rx_sync(0);
  sysref_1 <= sysref;
rx: component system_rx_0
     port map (
      cfg_beats_per_multiframe(7 downto 0) => rx_axi_rx_cfg_beats_per_multiframe(7 downto 0),
      cfg_buffer_delay(7 downto 0) => rx_axi_rx_cfg_buffer_delay(7 downto 0),
      cfg_buffer_early_release => rx_axi_rx_cfg_buffer_early_release,
      cfg_disable_char_replacement => rx_axi_rx_cfg_disable_char_replacement,
      cfg_disable_scrambler => rx_axi_rx_cfg_disable_scrambler,
      cfg_lanes_disable(3 downto 0) => rx_axi_rx_cfg_lanes_disable(3 downto 0),
      cfg_links_disable(0) => rx_axi_rx_cfg_links_disable(0),
      cfg_lmfc_offset(7 downto 0) => rx_axi_rx_cfg_lmfc_offset(7 downto 0),
      cfg_octets_per_frame(7 downto 0) => rx_axi_rx_cfg_octets_per_frame(7 downto 0),
      cfg_sysref_disable => rx_axi_rx_cfg_sysref_disable,
      cfg_sysref_oneshot => rx_axi_rx_cfg_sysref_oneshot,
      clk => device_clk_1,
      ctrl_err_statistics_mask(2 downto 0) => rx_axi_rx_cfg_err_statistics_mask(2 downto 0),
      ctrl_err_statistics_reset => rx_axi_rx_cfg_err_statistics_reset,
      event_sysref_alignment_error => rx_rx_event_sysref_alignment_error,
      event_sysref_edge => rx_rx_event_sysref_edge,
      ilas_config_addr(7 downto 0) => rx_rx_ilas_config_addr(7 downto 0),
      ilas_config_data(127 downto 0) => rx_rx_ilas_config_data(127 downto 0),
      ilas_config_valid(3 downto 0) => rx_rx_ilas_config_valid(3 downto 0),
      lmfc_clk => NLW_rx_lmfc_clk_UNCONNECTED,
      lmfc_edge => NLW_rx_lmfc_edge_UNCONNECTED,
      phy_charisk(15 downto 12) => rx_phy3_1_rxcharisk(3 downto 0),
      phy_charisk(11 downto 8) => rx_phy2_1_rxcharisk(3 downto 0),
      phy_charisk(7 downto 4) => rx_phy1_1_rxcharisk(3 downto 0),
      phy_charisk(3 downto 0) => rx_phy0_1_rxcharisk(3 downto 0),
      phy_data(127 downto 96) => rx_phy3_1_rxdata(31 downto 0),
      phy_data(95 downto 64) => rx_phy2_1_rxdata(31 downto 0),
      phy_data(63 downto 32) => rx_phy1_1_rxdata(31 downto 0),
      phy_data(31 downto 0) => rx_phy0_1_rxdata(31 downto 0),
      phy_disperr(15 downto 12) => rx_phy3_1_rxdisperr(3 downto 0),
      phy_disperr(11 downto 8) => rx_phy2_1_rxdisperr(3 downto 0),
      phy_disperr(7 downto 4) => rx_phy1_1_rxdisperr(3 downto 0),
      phy_disperr(3 downto 0) => rx_phy0_1_rxdisperr(3 downto 0),
      phy_en_char_align => rx_phy_en_char_align,
      phy_notintable(15 downto 12) => rx_phy3_1_rxnotintable(3 downto 0),
      phy_notintable(11 downto 8) => rx_phy2_1_rxnotintable(3 downto 0),
      phy_notintable(7 downto 4) => rx_phy1_1_rxnotintable(3 downto 0),
      phy_notintable(3 downto 0) => rx_phy0_1_rxnotintable(3 downto 0),
      reset => rx_axi_core_reset,
      rx_data(127 downto 0) => rx_rx_data(127 downto 0),
      rx_eof(3 downto 0) => rx_rx_eof(3 downto 0),
      rx_sof(3 downto 0) => rx_rx_sof(3 downto 0),
      rx_valid => rx_rx_valid,
      status_ctrl_state(1 downto 0) => rx_rx_status_ctrl_state(1 downto 0),
      status_err_statistics_cnt(127 downto 0) => rx_rx_status_err_statistics_cnt(127 downto 0),
      status_lane_cgs_state(7 downto 0) => rx_rx_status_lane_cgs_state(7 downto 0),
      status_lane_ifs_ready(3 downto 0) => rx_rx_status_lane_ifs_ready(3 downto 0),
      status_lane_latency(55 downto 0) => rx_rx_status_lane_latency(55 downto 0),
      sync(0) => rx_sync(0),
      sysref => sysref_1
    );
rx_axi: component system_rx_axi_0
     port map (
      core_cfg_beats_per_multiframe(7 downto 0) => rx_axi_rx_cfg_beats_per_multiframe(7 downto 0),
      core_cfg_buffer_delay(7 downto 0) => rx_axi_rx_cfg_buffer_delay(7 downto 0),
      core_cfg_buffer_early_release => rx_axi_rx_cfg_buffer_early_release,
      core_cfg_disable_char_replacement => rx_axi_rx_cfg_disable_char_replacement,
      core_cfg_disable_scrambler => rx_axi_rx_cfg_disable_scrambler,
      core_cfg_lanes_disable(3 downto 0) => rx_axi_rx_cfg_lanes_disable(3 downto 0),
      core_cfg_links_disable(0) => rx_axi_rx_cfg_links_disable(0),
      core_cfg_lmfc_offset(7 downto 0) => rx_axi_rx_cfg_lmfc_offset(7 downto 0),
      core_cfg_octets_per_frame(7 downto 0) => rx_axi_rx_cfg_octets_per_frame(7 downto 0),
      core_cfg_sysref_disable => rx_axi_rx_cfg_sysref_disable,
      core_cfg_sysref_oneshot => rx_axi_rx_cfg_sysref_oneshot,
      core_clk => device_clk_1,
      core_ctrl_err_statistics_mask(2 downto 0) => rx_axi_rx_cfg_err_statistics_mask(2 downto 0),
      core_ctrl_err_statistics_reset => rx_axi_rx_cfg_err_statistics_reset,
      core_event_sysref_alignment_error => rx_rx_event_sysref_alignment_error,
      core_event_sysref_edge => rx_rx_event_sysref_edge,
      core_ilas_config_addr(7 downto 0) => rx_rx_ilas_config_addr(7 downto 0),
      core_ilas_config_data(127 downto 0) => rx_rx_ilas_config_data(127 downto 0),
      core_ilas_config_valid(3 downto 0) => rx_rx_ilas_config_valid(3 downto 0),
      core_reset => rx_axi_core_reset,
      core_reset_ext => '0',
      core_status_ctrl_state(1 downto 0) => rx_rx_status_ctrl_state(1 downto 0),
      core_status_err_statistics_cnt(127 downto 0) => rx_rx_status_err_statistics_cnt(127 downto 0),
      core_status_lane_cgs_state(7 downto 0) => rx_rx_status_lane_cgs_state(7 downto 0),
      core_status_lane_ifs_ready(3 downto 0) => rx_rx_status_lane_ifs_ready(3 downto 0),
      core_status_lane_latency(55 downto 0) => rx_rx_status_lane_latency(55 downto 0),
      irq => rx_axi_irq,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(13 downto 0) => s_axi_1_ARADDR(13 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arprot(2 downto 0) => s_axi_1_ARPROT(2 downto 0),
      s_axi_arready => s_axi_1_ARREADY,
      s_axi_arvalid => s_axi_1_ARVALID,
      s_axi_awaddr(13 downto 0) => s_axi_1_AWADDR(13 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_1_AWPROT(2 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready => s_axi_1_RREADY,
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid => s_axi_1_RVALID,
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid => s_axi_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_I5GH1N is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_I5GH1N;

architecture STRUCTURE of m00_couplers_imp_I5GH1N is
  component system_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(15 downto 0) <= auto_pc_to_m00_couplers_ARADDR(15 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_pc_to_m00_couplers_AWADDR(15 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(15 downto 0) => auto_pc_to_m00_couplers_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_pc_to_m00_couplers_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(15 downto 0) => m00_couplers_to_auto_pc_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(15 downto 0) => m00_couplers_to_auto_pc_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1UBGIXM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1UBGIXM;

architecture STRUCTURE of m01_couplers_imp_1UBGIXM is
  component system_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(15 downto 0) <= auto_pc_to_m01_couplers_ARADDR(15 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_pc_to_m01_couplers_AWADDR(15 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_pc_WREADY;
  auto_pc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(15 downto 0) => auto_pc_to_m01_couplers_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m01_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_pc_to_m01_couplers_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m01_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_couplers_WVALID,
      s_axi_araddr(15 downto 0) => m01_couplers_to_auto_pc_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(15 downto 0) => m01_couplers_to_auto_pc_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m01_couplers_to_auto_pc_RLAST,
      s_axi_rready => m01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m01_couplers_to_auto_pc_WLAST,
      s_axi_wready => m01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1J5P44O is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1J5P44O;

architecture STRUCTURE of m02_couplers_imp_1J5P44O is
  component system_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal auto_pc_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal auto_pc_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(13 downto 0) <= auto_pc_to_m02_couplers_ARADDR(13 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(13 downto 0) <= auto_pc_to_m02_couplers_AWADDR(13 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(13 downto 0) => auto_pc_to_m02_couplers_ARADDR(13 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(13 downto 0) => auto_pc_to_m02_couplers_AWADDR(13 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(13 downto 0) => m02_couplers_to_auto_pc_ARADDR(13 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(13 downto 0) => m02_couplers_to_auto_pc_AWADDR(13 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_T17W6X is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_T17W6X;

architecture STRUCTURE of m03_couplers_imp_T17W6X is
  component system_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(11 downto 0) <= auto_pc_to_m03_couplers_ARADDR(11 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(11 downto 0) <= auto_pc_to_m03_couplers_AWADDR(11 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(11 downto 0) => auto_pc_to_m03_couplers_ARADDR(11 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(11 downto 0) => auto_pc_to_m03_couplers_AWADDR(11 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(11 downto 0) => m03_couplers_to_auto_pc_ARADDR(11 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(11 downto 0) => m03_couplers_to_auto_pc_AWADDR(11 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_15FU5SC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_15FU5SC;

architecture STRUCTURE of m04_couplers_imp_15FU5SC is
  component system_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m04_couplers_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(15 downto 0) <= auto_pc_to_m04_couplers_ARADDR(15 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m04_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_pc_to_m04_couplers_AWADDR(15 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m04_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m04_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m04_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m04_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_pc_WREADY;
  auto_pc_to_m04_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m04_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m04_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m04_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m04_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m04_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m04_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m04_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m04_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(15 downto 0) => auto_pc_to_m04_couplers_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m04_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m04_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m04_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_pc_to_m04_couplers_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m04_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m04_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m04_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m04_couplers_WVALID,
      s_axi_araddr(15 downto 0) => m04_couplers_to_auto_pc_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m04_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m04_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m04_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m04_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m04_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m04_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m04_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m04_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m04_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(15 downto 0) => m04_couplers_to_auto_pc_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m04_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m04_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m04_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m04_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m04_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m04_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m04_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m04_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m04_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m04_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m04_couplers_to_auto_pc_RLAST,
      s_axi_rready => m04_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m04_couplers_to_auto_pc_WLAST,
      s_axi_wready => m04_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_GFBASD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_GFBASD;

architecture STRUCTURE of m05_couplers_imp_GFBASD is
  component system_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_pc_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(15 downto 0) <= auto_pc_to_m05_couplers_ARADDR(15 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_pc_to_m05_couplers_AWADDR(15 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m05_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_pc_WREADY;
  auto_pc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(15 downto 0) => auto_pc_to_m05_couplers_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m05_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m05_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m05_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_pc_to_m05_couplers_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m05_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m05_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m05_couplers_WVALID,
      s_axi_araddr(15 downto 0) => m05_couplers_to_auto_pc_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(15 downto 0) => m05_couplers_to_auto_pc_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m05_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m05_couplers_to_auto_pc_RLAST,
      s_axi_rready => m05_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m05_couplers_to_auto_pc_WLAST,
      s_axi_wready => m05_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_59JXRJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_59JXRJ;

architecture STRUCTURE of m06_couplers_imp_59JXRJ is
  component system_auto_pc_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_6;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal auto_pc_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal auto_pc_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(13 downto 0) <= auto_pc_to_m06_couplers_ARADDR(13 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(13 downto 0) <= auto_pc_to_m06_couplers_AWADDR(13 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m06_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_pc_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m06_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m06_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m06_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m06_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m06_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m06_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m06_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m06_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m06_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m06_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_6
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(13 downto 0) => auto_pc_to_m06_couplers_ARADDR(13 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m06_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(13 downto 0) => auto_pc_to_m06_couplers_AWADDR(13 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m06_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(13 downto 0) => m06_couplers_to_auto_pc_ARADDR(13 downto 0),
      s_axi_arburst(1 downto 0) => m06_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m06_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m06_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m06_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m06_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m06_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m06_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m06_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(13 downto 0) => m06_couplers_to_auto_pc_AWADDR(13 downto 0),
      s_axi_awburst(1 downto 0) => m06_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m06_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m06_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m06_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m06_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m06_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m06_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m06_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m06_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m06_couplers_to_auto_pc_RLAST,
      s_axi_rready => m06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m06_couplers_to_auto_pc_WLAST,
      s_axi_wready => m06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1GBLMBI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1GBLMBI;

architecture STRUCTURE of m07_couplers_imp_1GBLMBI is
  component system_auto_pc_7 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_7;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m07_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m07_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m07_couplers_WVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m07_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m07_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m07_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m07_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m07_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m07_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m07_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m07_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m07_couplers_to_auto_pc_WREADY;
  auto_pc_to_m07_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m07_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m07_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m07_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m07_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m07_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m07_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m07_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m07_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m07_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m07_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m07_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m07_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m07_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m07_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m07_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m07_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m07_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m07_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m07_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m07_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_7
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m07_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m07_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m07_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m07_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m07_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m07_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m07_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m07_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m07_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m07_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m07_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m07_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m07_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m07_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m07_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m07_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m07_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m07_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m07_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m07_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m07_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m07_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m07_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m07_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m07_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m07_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m07_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m07_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m07_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m07_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m07_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m07_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m07_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m07_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m07_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m07_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m07_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m07_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m07_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m07_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m07_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m07_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m07_couplers_to_auto_pc_RLAST,
      s_axi_rready => m07_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m07_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m07_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m07_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m07_couplers_to_auto_pc_WLAST,
      s_axi_wready => m07_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m07_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m07_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_E05M9W is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_E05M9W;

architecture STRUCTURE of m08_couplers_imp_E05M9W is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_m08_couplers_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_m08_couplers_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m08_couplers_to_m08_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m08_couplers_to_m08_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m08_couplers_to_m08_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m08_couplers_to_m08_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m08_couplers_to_m08_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m08_couplers_to_m08_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m08_couplers_to_m08_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m08_couplers_to_m08_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m08_couplers_to_m08_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m08_couplers_to_m08_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m08_couplers_to_m08_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m08_couplers_to_m08_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m08_couplers_to_m08_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= m08_couplers_to_m08_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m08_couplers_to_m08_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m08_couplers_to_m08_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m08_couplers_to_m08_couplers_ARLOCK <= S_AXI_arlock;
  m08_couplers_to_m08_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m08_couplers_to_m08_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m08_couplers_to_m08_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m08_couplers_to_m08_couplers_AWLOCK <= S_AXI_awlock;
  m08_couplers_to_m08_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RLAST <= M_AXI_rlast;
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WLAST <= S_AXI_wlast;
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_17AVPN9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_17AVPN9;

architecture STRUCTURE of m09_couplers_imp_17AVPN9 is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_m09_couplers_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_m09_couplers_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m09_couplers_to_m09_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m09_couplers_to_m09_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m09_couplers_to_m09_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m09_couplers_to_m09_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m09_couplers_to_m09_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m09_couplers_to_m09_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m09_couplers_to_m09_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m09_couplers_to_m09_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m09_couplers_to_m09_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m09_couplers_to_m09_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m09_couplers_to_m09_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m09_couplers_to_m09_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m09_couplers_to_m09_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= m09_couplers_to_m09_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m09_couplers_to_m09_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m09_couplers_to_m09_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m09_couplers_to_m09_couplers_ARLOCK <= S_AXI_arlock;
  m09_couplers_to_m09_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m09_couplers_to_m09_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m09_couplers_to_m09_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m09_couplers_to_m09_couplers_AWLOCK <= S_AXI_awlock;
  m09_couplers_to_m09_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RLAST <= M_AXI_rlast;
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WLAST <= S_AXI_wlast;
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_H1ZQRK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s00_couplers_imp_H1ZQRK;

architecture STRUCTURE of s00_couplers_imp_H1ZQRK is
  component system_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_ds_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal auto_ds_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal s00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(29 downto 0) <= auto_ds_to_s00_couplers_ARADDR(29 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_ds_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_ds_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_ds_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_s00_couplers_ARVALID;
  M_AXI_rready <= auto_ds_to_s00_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_ds_ARREADY;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_ds_RDATA(127 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_ds_RVALID;
  auto_ds_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_ds_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_auto_ds_ARADDR(29 downto 0) <= S_AXI_araddr(29 downto 0);
  s00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_ds_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
auto_ds: component system_auto_ds_0
     port map (
      m_axi_araddr(29 downto 0) => auto_ds_to_s00_couplers_ARADDR(29 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_ds_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_ds_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_ds_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_ds_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_s00_couplers_ARVALID,
      m_axi_rdata(63 downto 0) => auto_ds_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_ds_to_s00_couplers_RLAST,
      m_axi_rready => auto_ds_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_s00_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(29 downto 0) => s00_couplers_to_auto_ds_ARADDR(29 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_ds_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_ds_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_ds_ARVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_ds_RDATA(127 downto 0),
      s_axi_rlast => s00_couplers_to_auto_ds_RLAST,
      s_axi_rready => s00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_ds_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_MCTRXI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_MCTRXI;

architecture STRUCTURE of s00_couplers_imp_MCTRXI is
  component system_auto_pc_9 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_9;
  component system_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_BREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_BVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_RLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_RREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_RVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_WLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_WREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_WVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_us_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_us_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_us_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_us_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_us_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_9
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_auto_us_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_auto_us_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_auto_us_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_auto_us_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_auto_us_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_auto_us_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      m_axi_bready => auto_pc_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_auto_us_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_auto_us_RLAST,
      m_axi_rready => auto_pc_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_auto_us_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_auto_us_WLAST,
      m_axi_wready => auto_pc_to_auto_us_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
auto_us: component system_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_us_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_us_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_us_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_us_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_us_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_us_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_us_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_us_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s00_couplers_RLAST,
      m_axi_rready => auto_us_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(3 downto 0) => auto_pc_to_auto_us_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => auto_pc_to_auto_us_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_auto_us_ARREADY,
      s_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => auto_pc_to_auto_us_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => auto_pc_to_auto_us_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_auto_us_AWREADY,
      s_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      s_axi_bready => auto_pc_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => auto_pc_to_auto_us_RLAST,
      s_axi_rready => auto_pc_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => auto_pc_to_auto_us_WLAST,
      s_axi_wready => auto_pc_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_WZLZH6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_WZLZH6;

architecture STRUCTURE of s00_couplers_imp_WZLZH6 is
  component system_auto_pc_8 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_8;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_8
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_cpu_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_arlock : out STD_LOGIC;
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_awlock : out STD_LOGIC;
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rlast : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wlast : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_arlock : out STD_LOGIC;
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_awlock : out STD_LOGIC;
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rlast : in STD_LOGIC;
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wlast : out STD_LOGIC;
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_axi_cpu_interconnect_0;

architecture STRUCTURE of system_axi_cpu_interconnect_0 is
  component system_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component system_xbar_0;
  signal axi_cpu_interconnect_ACLK_net : STD_LOGIC;
  signal axi_cpu_interconnect_ARESETN_net : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m06_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m07_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_RLAST : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_WLAST : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m08_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARREADY : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_ARVALID : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWREADY : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_AWVALID : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_BREADY : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_BVALID : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_RLAST : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_RREADY : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_RVALID : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_WLAST : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_WREADY : STD_LOGIC;
  signal m09_couplers_to_axi_cpu_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_axi_cpu_interconnect_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_ARLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_AWLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_ARLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_AWLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WLAST : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
begin
  M00_AXI_araddr(15 downto 0) <= m00_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_cpu_interconnect_ARVALID;
  M00_AXI_awaddr(15 downto 0) <= m00_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_cpu_interconnect_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_cpu_interconnect_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_cpu_interconnect_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_cpu_interconnect_WVALID;
  M01_AXI_araddr(15 downto 0) <= m01_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_cpu_interconnect_ARVALID;
  M01_AXI_awaddr(15 downto 0) <= m01_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_cpu_interconnect_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_cpu_interconnect_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_cpu_interconnect_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_cpu_interconnect_WVALID;
  M02_AXI_araddr(13 downto 0) <= m02_couplers_to_axi_cpu_interconnect_ARADDR(13 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_cpu_interconnect_ARVALID;
  M02_AXI_awaddr(13 downto 0) <= m02_couplers_to_axi_cpu_interconnect_AWADDR(13 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_cpu_interconnect_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_cpu_interconnect_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_cpu_interconnect_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_cpu_interconnect_WVALID;
  M03_AXI_araddr(11 downto 0) <= m03_couplers_to_axi_cpu_interconnect_ARADDR(11 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_cpu_interconnect_ARVALID;
  M03_AXI_awaddr(11 downto 0) <= m03_couplers_to_axi_cpu_interconnect_AWADDR(11 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_cpu_interconnect_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_cpu_interconnect_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_cpu_interconnect_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_cpu_interconnect_WVALID;
  M04_AXI_araddr(15 downto 0) <= m04_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_cpu_interconnect_ARVALID;
  M04_AXI_awaddr(15 downto 0) <= m04_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_cpu_interconnect_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_cpu_interconnect_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_cpu_interconnect_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_cpu_interconnect_WVALID;
  M05_AXI_araddr(15 downto 0) <= m05_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_cpu_interconnect_ARVALID;
  M05_AXI_awaddr(15 downto 0) <= m05_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_cpu_interconnect_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_cpu_interconnect_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_cpu_interconnect_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_cpu_interconnect_WVALID;
  M06_AXI_araddr(13 downto 0) <= m06_couplers_to_axi_cpu_interconnect_ARADDR(13 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_axi_cpu_interconnect_ARVALID;
  M06_AXI_awaddr(13 downto 0) <= m06_couplers_to_axi_cpu_interconnect_AWADDR(13 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_axi_cpu_interconnect_AWVALID;
  M06_AXI_bready <= m06_couplers_to_axi_cpu_interconnect_BREADY;
  M06_AXI_rready <= m06_couplers_to_axi_cpu_interconnect_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_axi_cpu_interconnect_WVALID;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0);
  M07_AXI_arprot(2 downto 0) <= m07_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_axi_cpu_interconnect_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0);
  M07_AXI_awprot(2 downto 0) <= m07_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_axi_cpu_interconnect_AWVALID;
  M07_AXI_bready <= m07_couplers_to_axi_cpu_interconnect_BREADY;
  M07_AXI_rready <= m07_couplers_to_axi_cpu_interconnect_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_axi_cpu_interconnect_WVALID;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0);
  M08_AXI_arburst(1 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARBURST(1 downto 0);
  M08_AXI_arcache(3 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARCACHE(3 downto 0);
  M08_AXI_arlen(7 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARLEN(7 downto 0);
  M08_AXI_arlock <= m08_couplers_to_axi_cpu_interconnect_ARLOCK;
  M08_AXI_arprot(2 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M08_AXI_arsize(2 downto 0) <= m08_couplers_to_axi_cpu_interconnect_ARSIZE(2 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_axi_cpu_interconnect_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0);
  M08_AXI_awburst(1 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWBURST(1 downto 0);
  M08_AXI_awcache(3 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWCACHE(3 downto 0);
  M08_AXI_awlen(7 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWLEN(7 downto 0);
  M08_AXI_awlock <= m08_couplers_to_axi_cpu_interconnect_AWLOCK;
  M08_AXI_awprot(2 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M08_AXI_awsize(2 downto 0) <= m08_couplers_to_axi_cpu_interconnect_AWSIZE(2 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_axi_cpu_interconnect_AWVALID;
  M08_AXI_bready <= m08_couplers_to_axi_cpu_interconnect_BREADY;
  M08_AXI_rready <= m08_couplers_to_axi_cpu_interconnect_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M08_AXI_wlast <= m08_couplers_to_axi_cpu_interconnect_WLAST;
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_axi_cpu_interconnect_WVALID;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0);
  M09_AXI_arburst(1 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARBURST(1 downto 0);
  M09_AXI_arcache(3 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARCACHE(3 downto 0);
  M09_AXI_arlen(7 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARLEN(7 downto 0);
  M09_AXI_arlock <= m09_couplers_to_axi_cpu_interconnect_ARLOCK;
  M09_AXI_arprot(2 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0);
  M09_AXI_arsize(2 downto 0) <= m09_couplers_to_axi_cpu_interconnect_ARSIZE(2 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_axi_cpu_interconnect_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0);
  M09_AXI_awburst(1 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWBURST(1 downto 0);
  M09_AXI_awcache(3 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWCACHE(3 downto 0);
  M09_AXI_awlen(7 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWLEN(7 downto 0);
  M09_AXI_awlock <= m09_couplers_to_axi_cpu_interconnect_AWLOCK;
  M09_AXI_awprot(2 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0);
  M09_AXI_awsize(2 downto 0) <= m09_couplers_to_axi_cpu_interconnect_AWSIZE(2 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_axi_cpu_interconnect_AWVALID;
  M09_AXI_bready <= m09_couplers_to_axi_cpu_interconnect_BREADY;
  M09_AXI_rready <= m09_couplers_to_axi_cpu_interconnect_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0);
  M09_AXI_wlast <= m09_couplers_to_axi_cpu_interconnect_WLAST;
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_axi_cpu_interconnect_WVALID;
  S00_AXI_arready <= axi_cpu_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_cpu_interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_cpu_interconnect_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_cpu_interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_cpu_interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_cpu_interconnect_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_cpu_interconnect_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_cpu_interconnect_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_cpu_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_cpu_interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_cpu_interconnect_to_s00_couplers_WREADY;
  axi_cpu_interconnect_ACLK_net <= ACLK;
  axi_cpu_interconnect_ARESETN_net <= ARESETN;
  axi_cpu_interconnect_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_cpu_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_cpu_interconnect_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_cpu_interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_cpu_interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_cpu_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_cpu_interconnect_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_cpu_interconnect_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_cpu_interconnect_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_cpu_interconnect_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_cpu_interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_cpu_interconnect_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_cpu_interconnect_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_cpu_interconnect_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_cpu_interconnect_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_cpu_interconnect_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_cpu_interconnect_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_cpu_interconnect_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_cpu_interconnect_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_cpu_interconnect_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_cpu_interconnect_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_cpu_interconnect_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_cpu_interconnect_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_cpu_interconnect_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_cpu_interconnect_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_cpu_interconnect_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_cpu_interconnect_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_cpu_interconnect_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_cpu_interconnect_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_cpu_interconnect_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_cpu_interconnect_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_cpu_interconnect_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_cpu_interconnect_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_cpu_interconnect_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_cpu_interconnect_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_cpu_interconnect_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_cpu_interconnect_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_cpu_interconnect_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_cpu_interconnect_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_cpu_interconnect_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_cpu_interconnect_WREADY <= M05_AXI_wready;
  m06_couplers_to_axi_cpu_interconnect_ARREADY <= M06_AXI_arready;
  m06_couplers_to_axi_cpu_interconnect_AWREADY <= M06_AXI_awready;
  m06_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_axi_cpu_interconnect_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_axi_cpu_interconnect_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_axi_cpu_interconnect_WREADY <= M06_AXI_wready;
  m07_couplers_to_axi_cpu_interconnect_ARREADY <= M07_AXI_arready;
  m07_couplers_to_axi_cpu_interconnect_AWREADY <= M07_AXI_awready;
  m07_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_axi_cpu_interconnect_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_axi_cpu_interconnect_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_axi_cpu_interconnect_WREADY <= M07_AXI_wready;
  m08_couplers_to_axi_cpu_interconnect_ARREADY <= M08_AXI_arready;
  m08_couplers_to_axi_cpu_interconnect_AWREADY <= M08_AXI_awready;
  m08_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_axi_cpu_interconnect_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_axi_cpu_interconnect_RLAST <= M08_AXI_rlast;
  m08_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_axi_cpu_interconnect_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_axi_cpu_interconnect_WREADY <= M08_AXI_wready;
  m09_couplers_to_axi_cpu_interconnect_ARREADY <= M09_AXI_arready;
  m09_couplers_to_axi_cpu_interconnect_AWREADY <= M09_AXI_awready;
  m09_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_axi_cpu_interconnect_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_axi_cpu_interconnect_RLAST <= M09_AXI_rlast;
  m09_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_axi_cpu_interconnect_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_axi_cpu_interconnect_WREADY <= M09_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_I5GH1N
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m00_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(15 downto 0) => m00_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1UBGIXM
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m01_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(15 downto 0) => m01_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1J5P44O
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(13 downto 0) => m02_couplers_to_axi_cpu_interconnect_ARADDR(13 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(13 downto 0) => m02_couplers_to_axi_cpu_interconnect_AWADDR(13 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_T17W6X
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(11 downto 0) => m03_couplers_to_axi_cpu_interconnect_ARADDR(11 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(11 downto 0) => m03_couplers_to_axi_cpu_interconnect_AWADDR(11 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_15FU5SC
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m04_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(15 downto 0) => m04_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arqos(3 downto 0) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awqos(3 downto 0) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_GFBASD
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m05_couplers_to_axi_cpu_interconnect_ARADDR(15 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(15 downto 0) => m05_couplers_to_axi_cpu_interconnect_AWADDR(15 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_59JXRJ
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(13 downto 0) => m06_couplers_to_axi_cpu_interconnect_ARADDR(13 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m06_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(13 downto 0) => m06_couplers_to_axi_cpu_interconnect_AWADDR(13 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m06_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m06_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arburst(1 downto 0) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      S_AXI_arcache(3 downto 0) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      S_AXI_arlen(7 downto 0) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      S_AXI_arlock(0) => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arqos(3 downto 0) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      S_AXI_arsize(2 downto 0) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awburst(1 downto 0) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      S_AXI_awcache(3 downto 0) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      S_AXI_awlen(7 downto 0) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      S_AXI_awlock(0) => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awqos(3 downto 0) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      S_AXI_awsize(2 downto 0) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1GBLMBI
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m07_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m07_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arvalid => m07_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m07_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m07_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awvalid => m07_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m07_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arburst(1 downto 0) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      S_AXI_arcache(3 downto 0) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      S_AXI_arlen(7 downto 0) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      S_AXI_arlock(0) => xbar_to_m07_couplers_ARLOCK(7),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arqos(3 downto 0) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      S_AXI_arsize(2 downto 0) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awburst(1 downto 0) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      S_AXI_awcache(3 downto 0) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      S_AXI_awlen(7 downto 0) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      S_AXI_awlock(0) => xbar_to_m07_couplers_AWLOCK(7),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awqos(3 downto 0) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      S_AXI_awsize(2 downto 0) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m07_couplers_RLAST,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wlast => xbar_to_m07_couplers_WLAST(7),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_E05M9W
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock => m08_couplers_to_axi_cpu_interconnect_ARLOCK,
      M_AXI_arprot(2 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m08_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arsize(2 downto 0) => m08_couplers_to_axi_cpu_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid => m08_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock => m08_couplers_to_axi_cpu_interconnect_AWLOCK,
      M_AXI_awprot(2 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m08_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awsize(2 downto 0) => m08_couplers_to_axi_cpu_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid => m08_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m08_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rlast => m08_couplers_to_axi_cpu_interconnect_RLAST,
      M_AXI_rready => m08_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wlast => m08_couplers_to_axi_cpu_interconnect_WLAST,
      M_AXI_wready => m08_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arburst(1 downto 0) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      S_AXI_arcache(3 downto 0) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      S_AXI_arlen(7 downto 0) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      S_AXI_arlock => xbar_to_m08_couplers_ARLOCK(8),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awburst(1 downto 0) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      S_AXI_awcache(3 downto 0) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      S_AXI_awlen(7 downto 0) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      S_AXI_awlock => xbar_to_m08_couplers_AWLOCK(8),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m08_couplers_RLAST,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wlast => xbar_to_m08_couplers_WLAST(8),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_17AVPN9
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock => m09_couplers_to_axi_cpu_interconnect_ARLOCK,
      M_AXI_arprot(2 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m09_couplers_to_axi_cpu_interconnect_ARREADY,
      M_AXI_arsize(2 downto 0) => m09_couplers_to_axi_cpu_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid => m09_couplers_to_axi_cpu_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock => m09_couplers_to_axi_cpu_interconnect_AWLOCK,
      M_AXI_awprot(2 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m09_couplers_to_axi_cpu_interconnect_AWREADY,
      M_AXI_awsize(2 downto 0) => m09_couplers_to_axi_cpu_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid => m09_couplers_to_axi_cpu_interconnect_AWVALID,
      M_AXI_bready => m09_couplers_to_axi_cpu_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_axi_cpu_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_axi_cpu_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_axi_cpu_interconnect_RDATA(31 downto 0),
      M_AXI_rlast => m09_couplers_to_axi_cpu_interconnect_RLAST,
      M_AXI_rready => m09_couplers_to_axi_cpu_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_axi_cpu_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_axi_cpu_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_axi_cpu_interconnect_WDATA(31 downto 0),
      M_AXI_wlast => m09_couplers_to_axi_cpu_interconnect_WLAST,
      M_AXI_wready => m09_couplers_to_axi_cpu_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_axi_cpu_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_axi_cpu_interconnect_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arburst(1 downto 0) => xbar_to_m09_couplers_ARBURST(19 downto 18),
      S_AXI_arcache(3 downto 0) => xbar_to_m09_couplers_ARCACHE(39 downto 36),
      S_AXI_arlen(7 downto 0) => xbar_to_m09_couplers_ARLEN(79 downto 72),
      S_AXI_arlock => xbar_to_m09_couplers_ARLOCK(9),
      S_AXI_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m09_couplers_ARSIZE(29 downto 27),
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awburst(1 downto 0) => xbar_to_m09_couplers_AWBURST(19 downto 18),
      S_AXI_awcache(3 downto 0) => xbar_to_m09_couplers_AWCACHE(39 downto 36),
      S_AXI_awlen(7 downto 0) => xbar_to_m09_couplers_AWLEN(79 downto 72),
      S_AXI_awlock => xbar_to_m09_couplers_AWLOCK(9),
      S_AXI_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m09_couplers_AWSIZE(29 downto 27),
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m09_couplers_RLAST,
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wlast => xbar_to_m09_couplers_WLAST(9),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
s00_couplers: entity work.s00_couplers_imp_WZLZH6
     port map (
      M_ACLK => axi_cpu_interconnect_ACLK_net,
      M_ARESETN => axi_cpu_interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => axi_cpu_interconnect_ACLK_net,
      S_ARESETN => axi_cpu_interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_cpu_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_cpu_interconnect_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_cpu_interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_cpu_interconnect_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_cpu_interconnect_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_cpu_interconnect_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_cpu_interconnect_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_cpu_interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_cpu_interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_cpu_interconnect_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_cpu_interconnect_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_cpu_interconnect_to_s00_couplers_RLAST,
      S_AXI_rready => axi_cpu_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_cpu_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_cpu_interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_cpu_interconnect_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_cpu_interconnect_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_cpu_interconnect_to_s00_couplers_WLAST,
      S_AXI_wready => axi_cpu_interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_cpu_interconnect_to_s00_couplers_WVALID
    );
xbar: component system_xbar_0
     port map (
      aclk => axi_cpu_interconnect_ACLK_net,
      aresetn => axi_cpu_interconnect_ARESETN_net,
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(19 downto 18) => xbar_to_m09_couplers_ARBURST(19 downto 18),
      m_axi_arburst(17 downto 16) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      m_axi_arburst(15 downto 14) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(39 downto 36) => xbar_to_m09_couplers_ARCACHE(39 downto 36),
      m_axi_arcache(35 downto 32) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      m_axi_arcache(31 downto 28) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(79 downto 72) => xbar_to_m09_couplers_ARLEN(79 downto 72),
      m_axi_arlen(71 downto 64) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      m_axi_arlen(63 downto 56) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(9) => xbar_to_m09_couplers_ARLOCK(9),
      m_axi_arlock(8) => xbar_to_m08_couplers_ARLOCK(8),
      m_axi_arlock(7) => xbar_to_m07_couplers_ARLOCK(7),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(39 downto 32) => NLW_xbar_m_axi_arqos_UNCONNECTED(39 downto 32),
      m_axi_arqos(31 downto 28) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(39 downto 32) => NLW_xbar_m_axi_arregion_UNCONNECTED(39 downto 32),
      m_axi_arregion(31 downto 28) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(29 downto 27) => xbar_to_m09_couplers_ARSIZE(29 downto 27),
      m_axi_arsize(26 downto 24) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      m_axi_arsize(23 downto 21) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(19 downto 18) => xbar_to_m09_couplers_AWBURST(19 downto 18),
      m_axi_awburst(17 downto 16) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      m_axi_awburst(15 downto 14) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(39 downto 36) => xbar_to_m09_couplers_AWCACHE(39 downto 36),
      m_axi_awcache(35 downto 32) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      m_axi_awcache(31 downto 28) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(79 downto 72) => xbar_to_m09_couplers_AWLEN(79 downto 72),
      m_axi_awlen(71 downto 64) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      m_axi_awlen(63 downto 56) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(9) => xbar_to_m09_couplers_AWLOCK(9),
      m_axi_awlock(8) => xbar_to_m08_couplers_AWLOCK(8),
      m_axi_awlock(7) => xbar_to_m07_couplers_AWLOCK(7),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(39 downto 32) => NLW_xbar_m_axi_awqos_UNCONNECTED(39 downto 32),
      m_axi_awqos(31 downto 28) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(39 downto 32) => NLW_xbar_m_axi_awregion_UNCONNECTED(39 downto 32),
      m_axi_awregion(31 downto 28) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(29 downto 27) => xbar_to_m09_couplers_AWSIZE(29 downto 27),
      m_axi_awsize(26 downto 24) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      m_axi_awsize(23 downto 21) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rlast(9) => xbar_to_m09_couplers_RLAST,
      m_axi_rlast(8) => xbar_to_m08_couplers_RLAST,
      m_axi_rlast(7) => xbar_to_m07_couplers_RLAST,
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(9) => xbar_to_m09_couplers_WLAST(9),
      m_axi_wlast(8) => xbar_to_m08_couplers_WLAST(8),
      m_axi_wlast(7) => xbar_to_m07_couplers_WLAST(7),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_hp1_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC
  );
end system_axi_hp1_interconnect_0;

architecture STRUCTURE of system_axi_hp1_interconnect_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_hp1_interconnect_ACLK_net : STD_LOGIC;
  signal axi_hp1_interconnect_ARESETN_net : STD_LOGIC;
  signal axi_hp1_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_hp1_interconnect_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_hp1_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_hp1_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_hp1_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp1_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp1_interconnect_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp1_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp1_interconnect_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_hp1_interconnect_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp1_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp1_interconnect_RVALID : STD_LOGIC;
begin
  M00_AXI_araddr(29 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARADDR(29 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_hp1_interconnect_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_hp1_interconnect_ARVALID;
  M00_AXI_rready <= s00_couplers_to_axi_hp1_interconnect_RREADY;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_hp1_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_rdata(127 downto 0) <= axi_hp1_interconnect_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rlast <= axi_hp1_interconnect_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_hp1_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_hp1_interconnect_to_s00_couplers_RVALID;
  axi_hp1_interconnect_ACLK_net <= M00_ACLK;
  axi_hp1_interconnect_ARESETN_net <= M00_ARESETN;
  axi_hp1_interconnect_to_s00_couplers_ARADDR(29 downto 0) <= S00_AXI_araddr(29 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_hp1_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_hp1_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  s00_couplers_to_axi_hp1_interconnect_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_hp1_interconnect_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  s00_couplers_to_axi_hp1_interconnect_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_hp1_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_hp1_interconnect_RVALID <= M00_AXI_rvalid;
s00_couplers: entity work.s00_couplers_imp_H1ZQRK
     port map (
      M_ACLK => axi_hp1_interconnect_ACLK_net,
      M_ARESETN => axi_hp1_interconnect_ARESETN_net,
      M_AXI_araddr(29 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARADDR(29 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_hp1_interconnect_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_hp1_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_hp1_interconnect_ARVALID,
      M_AXI_rdata(63 downto 0) => s00_couplers_to_axi_hp1_interconnect_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_hp1_interconnect_RLAST,
      M_AXI_rready => s00_couplers_to_axi_hp1_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_hp1_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_hp1_interconnect_RVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(29 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARADDR(29 downto 0),
      S_AXI_arburst(1 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(3 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arprot(2 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_hp1_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_hp1_interconnect_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_hp1_interconnect_to_s00_couplers_ARVALID,
      S_AXI_rdata(127 downto 0) => axi_hp1_interconnect_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rlast => axi_hp1_interconnect_to_s00_couplers_RLAST,
      S_AXI_rready => axi_hp1_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_hp1_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_hp1_interconnect_to_s00_couplers_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_hp3_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_axi_hp3_interconnect_0;

architecture STRUCTURE of system_axi_hp3_interconnect_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_hp3_interconnect_ACLK_net : STD_LOGIC;
  signal axi_hp3_interconnect_ARESETN_net : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_hp3_interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_hp3_interconnect_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_hp3_interconnect_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_hp3_interconnect_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_hp3_interconnect_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_hp3_interconnect_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_hp3_interconnect_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_hp3_interconnect_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_hp3_interconnect_RREADY;
  M00_AXI_wdata(63 downto 0) <= s00_couplers_to_axi_hp3_interconnect_WDATA(63 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_hp3_interconnect_WLAST;
  M00_AXI_wstrb(7 downto 0) <= s00_couplers_to_axi_hp3_interconnect_WSTRB(7 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_hp3_interconnect_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_hp3_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_hp3_interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_hp3_interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_hp3_interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_hp3_interconnect_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_hp3_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_hp3_interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_hp3_interconnect_to_s00_couplers_WREADY;
  axi_hp3_interconnect_ACLK_net <= M00_ACLK;
  axi_hp3_interconnect_ARESETN_net <= M00_ARESETN;
  axi_hp3_interconnect_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_hp3_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_hp3_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_hp3_interconnect_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_hp3_interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_hp3_interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_hp3_interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_hp3_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_hp3_interconnect_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_hp3_interconnect_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_hp3_interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_hp3_interconnect_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_hp3_interconnect_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_hp3_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_hp3_interconnect_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_hp3_interconnect_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  s00_couplers_to_axi_hp3_interconnect_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_hp3_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_hp3_interconnect_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_hp3_interconnect_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_MCTRXI
     port map (
      M_ACLK => axi_hp3_interconnect_ACLK_net,
      M_ARESETN => axi_hp3_interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_hp3_interconnect_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_hp3_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_hp3_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_hp3_interconnect_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_hp3_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_hp3_interconnect_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_hp3_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_hp3_interconnect_BVALID,
      M_AXI_rdata(63 downto 0) => s00_couplers_to_axi_hp3_interconnect_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_hp3_interconnect_RLAST,
      M_AXI_rready => s00_couplers_to_axi_hp3_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_hp3_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_hp3_interconnect_RVALID,
      M_AXI_wdata(63 downto 0) => s00_couplers_to_axi_hp3_interconnect_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_hp3_interconnect_WLAST,
      M_AXI_wready => s00_couplers_to_axi_hp3_interconnect_WREADY,
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_axi_hp3_interconnect_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_hp3_interconnect_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_hp3_interconnect_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => axi_hp3_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_hp3_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arvalid => axi_hp3_interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_hp3_interconnect_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => axi_hp3_interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_hp3_interconnect_to_s00_couplers_AWREADY,
      S_AXI_awvalid => axi_hp3_interconnect_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_hp3_interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_hp3_interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_hp3_interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_hp3_interconnect_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => axi_hp3_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_hp3_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_hp3_interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_hp3_interconnect_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => axi_hp3_interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_hp3_interconnect_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_hp3_interconnect_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    CLK_IN1_D_0_clk_n : in STD_LOGIC;
    CLK_IN1_D_0_clk_p : in STD_LOGIC;
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_cas_n : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gpio_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gpio_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_data_0_n : in STD_LOGIC;
    rx_data_0_p : in STD_LOGIC;
    rx_data_1_n : in STD_LOGIC;
    rx_data_1_p : in STD_LOGIC;
    rx_data_2_n : in STD_LOGIC;
    rx_data_2_p : in STD_LOGIC;
    rx_data_3_n : in STD_LOGIC;
    rx_data_3_p : in STD_LOGIC;
    rx_ref_clk_0 : in STD_LOGIC;
    rx_sync_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_sysref_0 : in STD_LOGIC;
    spi0_clk_i : in STD_LOGIC;
    spi0_clk_o : out STD_LOGIC;
    spi0_csn_0_o : out STD_LOGIC;
    spi0_csn_1_o : out STD_LOGIC;
    spi0_csn_2_o : out STD_LOGIC;
    spi0_csn_i : in STD_LOGIC;
    spi0_sdi_i : in STD_LOGIC;
    spi0_sdo_i : in STD_LOGIC;
    spi0_sdo_o : out STD_LOGIC;
    spi1_clk_i : in STD_LOGIC;
    spi1_clk_o : out STD_LOGIC;
    spi1_csn_0_o : out STD_LOGIC;
    spi1_csn_1_o : out STD_LOGIC;
    spi1_csn_2_o : out STD_LOGIC;
    spi1_csn_i : in STD_LOGIC;
    spi1_sdi_i : in STD_LOGIC;
    spi1_sdo_i : in STD_LOGIC;
    spi1_sdo_o : out STD_LOGIC;
    tx_data_0_n : out STD_LOGIC;
    tx_data_0_p : out STD_LOGIC;
    tx_data_1_n : out STD_LOGIC;
    tx_data_1_p : out STD_LOGIC;
    tx_data_2_n : out STD_LOGIC;
    tx_data_2_p : out STD_LOGIC;
    tx_data_3_n : out STD_LOGIC;
    tx_data_3_p : out STD_LOGIC;
    tx_ref_clk_0 : in STD_LOGIC;
    tx_sync_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_sysref_0 : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=70,numReposBlks=52,numNonXlnxBlks=13,numHierBlks=18,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_sys_ps7_0 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 63 downto 0 );
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    SPI1_SCLK_I : in STD_LOGIC;
    SPI1_SCLK_O : out STD_LOGIC;
    SPI1_SCLK_T : out STD_LOGIC;
    SPI1_MOSI_I : in STD_LOGIC;
    SPI1_MOSI_O : out STD_LOGIC;
    SPI1_MOSI_T : out STD_LOGIC;
    SPI1_MISO_I : in STD_LOGIC;
    SPI1_MISO_O : out STD_LOGIC;
    SPI1_MISO_T : out STD_LOGIC;
    SPI1_SS_I : in STD_LOGIC;
    SPI1_SS_O : out STD_LOGIC;
    SPI1_SS1_O : out STD_LOGIC;
    SPI1_SS2_O : out STD_LOGIC;
    SPI1_SS_T : out STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_ARREADY : out STD_LOGIC;
    S_AXI_HP3_AWREADY : out STD_LOGIC;
    S_AXI_HP3_BVALID : out STD_LOGIC;
    S_AXI_HP3_RLAST : out STD_LOGIC;
    S_AXI_HP3_RVALID : out STD_LOGIC;
    S_AXI_HP3_WREADY : out STD_LOGIC;
    S_AXI_HP3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP3_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_ACLK : in STD_LOGIC;
    S_AXI_HP3_ARVALID : in STD_LOGIC;
    S_AXI_HP3_AWVALID : in STD_LOGIC;
    S_AXI_HP3_BREADY : in STD_LOGIC;
    S_AXI_HP3_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP3_RREADY : in STD_LOGIC;
    S_AXI_HP3_WLAST : in STD_LOGIC;
    S_AXI_HP3_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP3_WVALID : in STD_LOGIC;
    S_AXI_HP3_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP3_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP3_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_sys_ps7_0;
  component system_sys_concat_intc_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_sys_concat_intc_0;
  component system_sys_rstgen_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_sys_rstgen_0;
  component system_GND_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_GND_1_0;
  component system_axi_ad9144_fifo_0 is
  port (
    dma_clk : in STD_LOGIC;
    dma_rst : in STD_LOGIC;
    dma_valid : in STD_LOGIC;
    dma_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dma_ready : out STD_LOGIC;
    dma_xfer_req : in STD_LOGIC;
    dma_xfer_last : in STD_LOGIC;
    dac_clk : in STD_LOGIC;
    dac_rst : in STD_LOGIC;
    dac_valid : in STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dac_dunf : out STD_LOGIC;
    dac_xfer_out : out STD_LOGIC;
    bypass : in STD_LOGIC
  );
  end component system_axi_ad9144_fifo_0;
  component system_axi_ad9144_xcvr_0 is
  port (
    up_cm_enb_0 : out STD_LOGIC;
    up_cm_addr_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_cm_wr_0 : out STD_LOGIC;
    up_cm_wdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_cm_rdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_cm_ready_0 : in STD_LOGIC;
    up_ch_pll_locked_0 : in STD_LOGIC;
    up_ch_rst_0 : out STD_LOGIC;
    up_ch_user_ready_0 : out STD_LOGIC;
    up_ch_rst_done_0 : in STD_LOGIC;
    up_ch_lpm_dfe_n_0 : out STD_LOGIC;
    up_ch_rate_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_0 : out STD_LOGIC;
    up_ch_addr_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_0 : out STD_LOGIC;
    up_ch_wdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_0 : in STD_LOGIC;
    up_ch_pll_locked_1 : in STD_LOGIC;
    up_ch_rst_1 : out STD_LOGIC;
    up_ch_user_ready_1 : out STD_LOGIC;
    up_ch_rst_done_1 : in STD_LOGIC;
    up_ch_lpm_dfe_n_1 : out STD_LOGIC;
    up_ch_rate_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_1 : out STD_LOGIC;
    up_ch_addr_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_1 : out STD_LOGIC;
    up_ch_wdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_1 : in STD_LOGIC;
    up_ch_pll_locked_2 : in STD_LOGIC;
    up_ch_rst_2 : out STD_LOGIC;
    up_ch_user_ready_2 : out STD_LOGIC;
    up_ch_rst_done_2 : in STD_LOGIC;
    up_ch_lpm_dfe_n_2 : out STD_LOGIC;
    up_ch_rate_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_2 : out STD_LOGIC;
    up_ch_addr_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_2 : out STD_LOGIC;
    up_ch_wdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_2 : in STD_LOGIC;
    up_ch_pll_locked_3 : in STD_LOGIC;
    up_ch_rst_3 : out STD_LOGIC;
    up_ch_user_ready_3 : out STD_LOGIC;
    up_ch_rst_done_3 : in STD_LOGIC;
    up_ch_lpm_dfe_n_3 : out STD_LOGIC;
    up_ch_rate_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_3 : out STD_LOGIC;
    up_ch_addr_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_3 : out STD_LOGIC;
    up_ch_wdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_3 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_status : out STD_LOGIC;
    up_pll_rst : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC
  );
  end component system_axi_ad9144_xcvr_0;
  component system_axi_ad9144_core_0 is
  port (
    tx_clk : in STD_LOGIC;
    tx_valid : out STD_LOGIC;
    tx_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_ready : in STD_LOGIC;
    dac_clk : out STD_LOGIC;
    dac_valid_0 : out STD_LOGIC;
    dac_enable_0 : out STD_LOGIC;
    dac_ddata_0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dac_valid_1 : out STD_LOGIC;
    dac_enable_1 : out STD_LOGIC;
    dac_ddata_1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dac_dunf : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC
  );
  end component system_axi_ad9144_core_0;
  component system_axi_ad9144_upack_0 is
  port (
    dac_clk : in STD_LOGIC;
    dac_enable_0 : in STD_LOGIC;
    dac_valid_0 : in STD_LOGIC;
    dac_valid_out_0 : out STD_LOGIC;
    dac_data_0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dac_enable_1 : in STD_LOGIC;
    dac_valid_1 : in STD_LOGIC;
    dac_valid_out_1 : out STD_LOGIC;
    dac_data_1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dac_valid : out STD_LOGIC;
    dac_sync : out STD_LOGIC;
    dac_data : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component system_axi_ad9144_upack_0;
  component system_axi_ad9144_dma_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_aresetn : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_arvalid : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_src_axi_rready : out STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    m_src_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_xfer_req : out STD_LOGIC
  );
  end component system_axi_ad9144_dma_0;
  component system_axi_ad9680_xcvr_0 is
  port (
    up_es_enb_0 : out STD_LOGIC;
    up_es_addr_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_0 : out STD_LOGIC;
    up_es_reset_0 : out STD_LOGIC;
    up_es_wdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_0 : in STD_LOGIC;
    up_ch_pll_locked_0 : in STD_LOGIC;
    up_ch_rst_0 : out STD_LOGIC;
    up_ch_user_ready_0 : out STD_LOGIC;
    up_ch_rst_done_0 : in STD_LOGIC;
    up_ch_lpm_dfe_n_0 : out STD_LOGIC;
    up_ch_rate_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_0 : out STD_LOGIC;
    up_ch_addr_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_0 : out STD_LOGIC;
    up_ch_wdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_0 : in STD_LOGIC;
    up_es_enb_1 : out STD_LOGIC;
    up_es_addr_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_1 : out STD_LOGIC;
    up_es_reset_1 : out STD_LOGIC;
    up_es_wdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_1 : in STD_LOGIC;
    up_ch_pll_locked_1 : in STD_LOGIC;
    up_ch_rst_1 : out STD_LOGIC;
    up_ch_user_ready_1 : out STD_LOGIC;
    up_ch_rst_done_1 : in STD_LOGIC;
    up_ch_lpm_dfe_n_1 : out STD_LOGIC;
    up_ch_rate_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_1 : out STD_LOGIC;
    up_ch_addr_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_1 : out STD_LOGIC;
    up_ch_wdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_1 : in STD_LOGIC;
    up_es_enb_2 : out STD_LOGIC;
    up_es_addr_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_2 : out STD_LOGIC;
    up_es_reset_2 : out STD_LOGIC;
    up_es_wdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_2 : in STD_LOGIC;
    up_ch_pll_locked_2 : in STD_LOGIC;
    up_ch_rst_2 : out STD_LOGIC;
    up_ch_user_ready_2 : out STD_LOGIC;
    up_ch_rst_done_2 : in STD_LOGIC;
    up_ch_lpm_dfe_n_2 : out STD_LOGIC;
    up_ch_rate_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_2 : out STD_LOGIC;
    up_ch_addr_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_2 : out STD_LOGIC;
    up_ch_wdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_2 : in STD_LOGIC;
    up_es_enb_3 : out STD_LOGIC;
    up_es_addr_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_3 : out STD_LOGIC;
    up_es_reset_3 : out STD_LOGIC;
    up_es_wdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_3 : in STD_LOGIC;
    up_ch_pll_locked_3 : in STD_LOGIC;
    up_ch_rst_3 : out STD_LOGIC;
    up_ch_user_ready_3 : out STD_LOGIC;
    up_ch_rst_done_3 : in STD_LOGIC;
    up_ch_lpm_dfe_n_3 : out STD_LOGIC;
    up_ch_rate_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_sys_clk_sel_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_ch_out_clk_sel_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_ch_tx_diffctrl_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_ch_tx_postcursor_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_tx_precursor_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    up_ch_enb_3 : out STD_LOGIC;
    up_ch_addr_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    up_ch_wr_3 : out STD_LOGIC;
    up_ch_wdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_rdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_ch_ready_3 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_status : out STD_LOGIC;
    up_pll_rst : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC
  );
  end component system_axi_ad9680_xcvr_0;
  component system_axi_ad9680_core_0 is
  port (
    rx_clk : in STD_LOGIC;
    rx_sof : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_valid : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_ready : out STD_LOGIC;
    adc_clk : out STD_LOGIC;
    adc_enable_0 : out STD_LOGIC;
    adc_valid_0 : out STD_LOGIC;
    adc_data_0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    adc_enable_1 : out STD_LOGIC;
    adc_valid_1 : out STD_LOGIC;
    adc_data_1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    adc_dovf : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC
  );
  end component system_axi_ad9680_core_0;
  component system_axi_ad9680_cpack_0 is
  port (
    adc_rst : in STD_LOGIC;
    adc_clk : in STD_LOGIC;
    adc_enable_0 : in STD_LOGIC;
    adc_valid_0 : in STD_LOGIC;
    adc_data_0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    adc_enable_1 : in STD_LOGIC;
    adc_valid_1 : in STD_LOGIC;
    adc_data_1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    adc_valid : out STD_LOGIC;
    adc_sync : out STD_LOGIC;
    adc_data : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component system_axi_ad9680_cpack_0;
  component system_util_daq2_xcvr_0 is
  port (
    up_rstn : in STD_LOGIC;
    up_clk : in STD_LOGIC;
    qpll_ref_clk_0 : in STD_LOGIC;
    up_qpll_rst_0 : in STD_LOGIC;
    cpll_ref_clk_0 : in STD_LOGIC;
    up_cpll_rst_0 : in STD_LOGIC;
    rx_0_p : in STD_LOGIC;
    rx_0_n : in STD_LOGIC;
    rx_out_clk_0 : out STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    rx_charisk_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_disperr_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_notintable_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_calign_0 : in STD_LOGIC;
    tx_0_p : out STD_LOGIC;
    tx_0_n : out STD_LOGIC;
    tx_out_clk_0 : out STD_LOGIC;
    tx_clk_0 : in STD_LOGIC;
    tx_charisk_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_cm_enb_0 : in STD_LOGIC;
    up_cm_addr_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_cm_wr_0 : in STD_LOGIC;
    up_cm_wdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_cm_rdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_cm_ready_0 : out STD_LOGIC;
    up_es_enb_0 : in STD_LOGIC;
    up_es_addr_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_0 : in STD_LOGIC;
    up_es_wdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_0 : out STD_LOGIC;
    up_es_reset_0 : in STD_LOGIC;
    up_rx_pll_locked_0 : out STD_LOGIC;
    up_rx_rst_0 : in STD_LOGIC;
    up_rx_user_ready_0 : in STD_LOGIC;
    up_rx_rst_done_0 : out STD_LOGIC;
    up_rx_lpm_dfe_n_0 : in STD_LOGIC;
    up_rx_rate_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_sys_clk_sel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_rx_out_clk_sel_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_enb_0 : in STD_LOGIC;
    up_rx_addr_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_rx_wr_0 : in STD_LOGIC;
    up_rx_wdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_rdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_ready_0 : out STD_LOGIC;
    up_tx_pll_locked_0 : out STD_LOGIC;
    up_tx_rst_0 : in STD_LOGIC;
    up_tx_user_ready_0 : in STD_LOGIC;
    up_tx_rst_done_0 : out STD_LOGIC;
    up_tx_lpm_dfe_n_0 : in STD_LOGIC;
    up_tx_rate_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_sys_clk_sel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_tx_out_clk_sel_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_diffctrl_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_tx_postcursor_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_precursor_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_enb_0 : in STD_LOGIC;
    up_tx_addr_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_tx_wr_0 : in STD_LOGIC;
    up_tx_wdata_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_rdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_ready_0 : out STD_LOGIC;
    cpll_ref_clk_1 : in STD_LOGIC;
    up_cpll_rst_1 : in STD_LOGIC;
    rx_1_p : in STD_LOGIC;
    rx_1_n : in STD_LOGIC;
    rx_out_clk_1 : out STD_LOGIC;
    rx_clk_1 : in STD_LOGIC;
    rx_charisk_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_disperr_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_notintable_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_calign_1 : in STD_LOGIC;
    tx_1_p : out STD_LOGIC;
    tx_1_n : out STD_LOGIC;
    tx_out_clk_1 : out STD_LOGIC;
    tx_clk_1 : in STD_LOGIC;
    tx_charisk_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_es_enb_1 : in STD_LOGIC;
    up_es_addr_1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_1 : in STD_LOGIC;
    up_es_wdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_1 : out STD_LOGIC;
    up_es_reset_1 : in STD_LOGIC;
    up_rx_pll_locked_1 : out STD_LOGIC;
    up_rx_rst_1 : in STD_LOGIC;
    up_rx_user_ready_1 : in STD_LOGIC;
    up_rx_rst_done_1 : out STD_LOGIC;
    up_rx_lpm_dfe_n_1 : in STD_LOGIC;
    up_rx_rate_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_sys_clk_sel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_rx_out_clk_sel_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_enb_1 : in STD_LOGIC;
    up_rx_addr_1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_rx_wr_1 : in STD_LOGIC;
    up_rx_wdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_rdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_ready_1 : out STD_LOGIC;
    up_tx_pll_locked_1 : out STD_LOGIC;
    up_tx_rst_1 : in STD_LOGIC;
    up_tx_user_ready_1 : in STD_LOGIC;
    up_tx_rst_done_1 : out STD_LOGIC;
    up_tx_lpm_dfe_n_1 : in STD_LOGIC;
    up_tx_rate_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_sys_clk_sel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_tx_out_clk_sel_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_diffctrl_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_tx_postcursor_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_precursor_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_enb_1 : in STD_LOGIC;
    up_tx_addr_1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_tx_wr_1 : in STD_LOGIC;
    up_tx_wdata_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_rdata_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_ready_1 : out STD_LOGIC;
    cpll_ref_clk_2 : in STD_LOGIC;
    up_cpll_rst_2 : in STD_LOGIC;
    rx_2_p : in STD_LOGIC;
    rx_2_n : in STD_LOGIC;
    rx_out_clk_2 : out STD_LOGIC;
    rx_clk_2 : in STD_LOGIC;
    rx_charisk_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_disperr_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_notintable_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_calign_2 : in STD_LOGIC;
    tx_2_p : out STD_LOGIC;
    tx_2_n : out STD_LOGIC;
    tx_out_clk_2 : out STD_LOGIC;
    tx_clk_2 : in STD_LOGIC;
    tx_charisk_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_es_enb_2 : in STD_LOGIC;
    up_es_addr_2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_2 : in STD_LOGIC;
    up_es_wdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_2 : out STD_LOGIC;
    up_es_reset_2 : in STD_LOGIC;
    up_rx_pll_locked_2 : out STD_LOGIC;
    up_rx_rst_2 : in STD_LOGIC;
    up_rx_user_ready_2 : in STD_LOGIC;
    up_rx_rst_done_2 : out STD_LOGIC;
    up_rx_lpm_dfe_n_2 : in STD_LOGIC;
    up_rx_rate_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_sys_clk_sel_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_rx_out_clk_sel_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_enb_2 : in STD_LOGIC;
    up_rx_addr_2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_rx_wr_2 : in STD_LOGIC;
    up_rx_wdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_rdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_ready_2 : out STD_LOGIC;
    up_tx_pll_locked_2 : out STD_LOGIC;
    up_tx_rst_2 : in STD_LOGIC;
    up_tx_user_ready_2 : in STD_LOGIC;
    up_tx_rst_done_2 : out STD_LOGIC;
    up_tx_lpm_dfe_n_2 : in STD_LOGIC;
    up_tx_rate_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_sys_clk_sel_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_tx_out_clk_sel_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_diffctrl_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_tx_postcursor_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_precursor_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_enb_2 : in STD_LOGIC;
    up_tx_addr_2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_tx_wr_2 : in STD_LOGIC;
    up_tx_wdata_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_rdata_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_ready_2 : out STD_LOGIC;
    cpll_ref_clk_3 : in STD_LOGIC;
    up_cpll_rst_3 : in STD_LOGIC;
    rx_3_p : in STD_LOGIC;
    rx_3_n : in STD_LOGIC;
    rx_out_clk_3 : out STD_LOGIC;
    rx_clk_3 : in STD_LOGIC;
    rx_charisk_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_disperr_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_notintable_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_calign_3 : in STD_LOGIC;
    tx_3_p : out STD_LOGIC;
    tx_3_n : out STD_LOGIC;
    tx_out_clk_3 : out STD_LOGIC;
    tx_clk_3 : in STD_LOGIC;
    tx_charisk_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_es_enb_3 : in STD_LOGIC;
    up_es_addr_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_es_wr_3 : in STD_LOGIC;
    up_es_wdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_rdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_es_ready_3 : out STD_LOGIC;
    up_es_reset_3 : in STD_LOGIC;
    up_rx_pll_locked_3 : out STD_LOGIC;
    up_rx_rst_3 : in STD_LOGIC;
    up_rx_user_ready_3 : in STD_LOGIC;
    up_rx_rst_done_3 : out STD_LOGIC;
    up_rx_lpm_dfe_n_3 : in STD_LOGIC;
    up_rx_rate_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_sys_clk_sel_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_rx_out_clk_sel_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_rx_enb_3 : in STD_LOGIC;
    up_rx_addr_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_rx_wr_3 : in STD_LOGIC;
    up_rx_wdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_rdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_rx_ready_3 : out STD_LOGIC;
    up_tx_pll_locked_3 : out STD_LOGIC;
    up_tx_rst_3 : in STD_LOGIC;
    up_tx_user_ready_3 : in STD_LOGIC;
    up_tx_rst_done_3 : out STD_LOGIC;
    up_tx_lpm_dfe_n_3 : in STD_LOGIC;
    up_tx_rate_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_sys_clk_sel_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_tx_out_clk_sel_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_tx_diffctrl_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_tx_postcursor_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_precursor_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    up_tx_enb_3 : in STD_LOGIC;
    up_tx_addr_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    up_tx_wr_3 : in STD_LOGIC;
    up_tx_wdata_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_rdata_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    up_tx_ready_3 : out STD_LOGIC
  );
  end component system_util_daq2_xcvr_0;
  component system_axi_ad9144_jesd_rstgen_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_ad9144_jesd_rstgen_0;
  component system_axi_ad9680_jesd_rstgen_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_ad9680_jesd_rstgen_0;
  component system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_0_0;
  component system_Singleshot_0_0 is
  port (
    single_shot : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component system_Singleshot_0_0;
  component system_Mem_Buffer_0_1 is
  port (
    mem_out_0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mem_out_1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    enable : in STD_LOGIC;
    single_shot : in STD_LOGIC;
    val_info : in STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  end component system_Mem_Buffer_0_1;
  component system_DFlipFlop_0_0 is
  port (
    inSignal : in STD_LOGIC;
    outSignal : out STD_LOGIC;
    ref_clk : in STD_LOGIC
  );
  end component system_DFlipFlop_0_0;
  component system_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_1_0;
  component system_Counter_Xbits_0_0 is
  port (
    Reset : in STD_LOGIC;
    Enable : in STD_LOGIC;
    Address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wraparound : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
  end component system_Counter_Xbits_0_0;
  component system_StateMachine_0_0 is
  port (
    Capture : in STD_LOGIC;
    Ready : out STD_LOGIC;
    val_info : in STD_LOGIC;
    Reset_in : in STD_LOGIC;
    wraparound : in STD_LOGIC;
    Write_Enable : out STD_LOGIC;
    Reset_out : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
  end component system_StateMachine_0_0;
  component system_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component system_blk_mem_gen_0_0;
  component system_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_bram_ctrl_0_1;
  component system_tdc_0_0 is
  port (
    clk_i : in STD_LOGIC;
    nrst_i : in STD_LOGIC;
    en_tdc_i : in STD_LOGIC;
    start_i : in STD_LOGIC;
    stop_i : in STD_LOGIC;
    measurement_o : out STD_LOGIC_VECTOR ( 20 downto 0 );
    wr_en_o : out STD_LOGIC
  );
  end component system_tdc_0_0;
  component system_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component system_clk_wiz_0_0;
  component system_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_1_1;
  component system_BRAM_CONTROLLER_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_BRAM_CONTROLLER_0;
  component system_UserMemoryAccess_BRAM_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_UserMemoryAccess_BRAM_0;
  component system_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_xlconcat_0_0;
  component system_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component system_xlconstant_1_2;
  component system_Counter_XBits_1 is
  port (
    Reset : in STD_LOGIC;
    Enable : in STD_LOGIC;
    Address : out STD_LOGIC_VECTOR ( 12 downto 0 );
    wraparound : out STD_LOGIC;
    Clk : in STD_LOGIC
  );
  end component system_Counter_XBits_1;
  component system_edgeDetector_0_0 is
  port (
    clk_i : in STD_LOGIC;
    nrst_i : in STD_LOGIC;
    ref_i : in STD_LOGIC;
    redge_o : out STD_LOGIC;
    fedge_o : out STD_LOGIC
  );
  end component system_edgeDetector_0_0;
  component system_VCC_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_VCC_0;
  component system_Start_1CLK_STOP_0_0 is
  port (
    clk_i : in STD_LOGIC;
    trigger_i : in STD_LOGIC;
    start_o : out STD_LOGIC;
    stop_o : out STD_LOGIC
  );
  end component system_Start_1CLK_STOP_0_0;
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_CLK : STD_LOGIC;
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_EN : STD_LOGIC;
  signal BRAM_CTRL_MEASURE_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IN1_D_0_1_CLK_N : STD_LOGIC;
  signal CLK_IN1_D_0_1_CLK_P : STD_LOGIC;
  signal Counter_XBits1_Address : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Counter_Xbits_0_Address : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Counter_Xbits_0_wraparound : STD_LOGIC;
  signal DFlipFlop_0_outSignal : STD_LOGIC;
  signal GND2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GND_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mem_Buffer_0_mem_out_0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Mem_Buffer_0_mem_out_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal S00_AXI_3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_3_ARREADY : STD_LOGIC;
  signal S00_AXI_3_ARVALID : STD_LOGIC;
  signal S00_AXI_3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_3_AWREADY : STD_LOGIC;
  signal S00_AXI_3_AWVALID : STD_LOGIC;
  signal S00_AXI_3_BREADY : STD_LOGIC;
  signal S00_AXI_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_3_BVALID : STD_LOGIC;
  signal S00_AXI_3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_RREADY : STD_LOGIC;
  signal S00_AXI_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_3_RVALID : STD_LOGIC;
  signal S00_AXI_3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_WREADY : STD_LOGIC;
  signal S00_AXI_3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_3_WVALID : STD_LOGIC;
  signal S00_AXI_4_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal S00_AXI_4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_4_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_4_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_4_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_4_ARREADY : STD_LOGIC;
  signal S00_AXI_4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_4_ARVALID : STD_LOGIC;
  signal S00_AXI_4_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S00_AXI_4_RLAST : STD_LOGIC;
  signal S00_AXI_4_RREADY : STD_LOGIC;
  signal S00_AXI_4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_4_RVALID : STD_LOGIC;
  signal Singleshot_0_single_shot : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Singleshot_0_single_shot : signal is std.standard.true;
  attribute debug : string;
  attribute debug of Singleshot_0_single_shot : signal is "true";
  signal Start_1CLK_STOP_0_start_o : STD_LOGIC;
  attribute MARK_DEBUG of Start_1CLK_STOP_0_start_o : signal is std.standard.true;
  attribute debug of Start_1CLK_STOP_0_start_o : signal is "true";
  signal Start_1CLK_STOP_0_stop_o : STD_LOGIC;
  attribute MARK_DEBUG of Start_1CLK_STOP_0_stop_o : signal is std.standard.true;
  attribute debug of Start_1CLK_STOP_0_stop_o : signal is "true";
  signal StateMachine_0_Reset_out : STD_LOGIC;
  signal StateMachine_0_Write_Enable : STD_LOGIC;
  signal VCC_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ad9144_core_dac_enable_0 : STD_LOGIC;
  signal axi_ad9144_core_dac_enable_1 : STD_LOGIC;
  signal axi_ad9144_core_dac_valid_0 : STD_LOGIC;
  signal axi_ad9144_core_dac_valid_1 : STD_LOGIC;
  signal axi_ad9144_dma_irq : STD_LOGIC;
  signal axi_ad9144_dma_m_axis_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_ad9144_dma_m_axis_last : STD_LOGIC;
  signal axi_ad9144_dma_m_axis_valid : STD_LOGIC;
  signal axi_ad9144_dma_m_axis_xfer_req : STD_LOGIC;
  signal axi_ad9144_fifo_dac_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_ad9144_fifo_dac_dunf : STD_LOGIC;
  signal axi_ad9144_fifo_dma_ready : STD_LOGIC;
  signal axi_ad9144_jesd_irq : STD_LOGIC;
  signal axi_ad9144_jesd_rstgen_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ad9144_jesd_tx_phy0_txcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_jesd_tx_phy0_txdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ad9144_jesd_tx_phy1_txcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_jesd_tx_phy1_txdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ad9144_jesd_tx_phy2_txcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_jesd_tx_phy2_txdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ad9144_jesd_tx_phy3_txcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_jesd_tx_phy3_txdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ad9144_upack_dac_valid : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_enb : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_pll_locked : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_rst : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_rst_done : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_tx_diffctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_tx_postcursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_tx_precursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_user_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_0_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_0_wr : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_enb : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_pll_locked : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_rst : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_rst_done : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_tx_diffctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_tx_postcursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_tx_precursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_user_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_1_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_1_wr : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_enb : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_pll_locked : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_rst : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_rst_done : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_tx_diffctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_tx_postcursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_tx_precursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_user_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_2_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_2_wr : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_enb : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_pll_locked : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_rst : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_rst_done : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_tx_diffctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_tx_postcursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_tx_precursor : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_user_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_ch_3_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_ch_3_wr : STD_LOGIC;
  signal axi_ad9144_xcvr_up_cm_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9144_xcvr_up_cm_0_enb : STD_LOGIC;
  signal axi_ad9144_xcvr_up_cm_0_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_cm_0_ready : STD_LOGIC;
  signal axi_ad9144_xcvr_up_cm_0_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9144_xcvr_up_cm_0_wr : STD_LOGIC;
  signal axi_ad9144_xcvr_up_pll_rst : STD_LOGIC;
  signal axi_ad9680_core_adc_data_0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ad9680_core_adc_data_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ad9680_core_adc_enable_0 : STD_LOGIC;
  signal axi_ad9680_core_adc_enable_1 : STD_LOGIC;
  signal axi_ad9680_core_adc_valid_0 : STD_LOGIC;
  signal axi_ad9680_core_adc_valid_1 : STD_LOGIC;
  signal axi_ad9680_cpack_adc_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_ad9680_cpack_adc_valid : STD_LOGIC;
  signal axi_ad9680_jesd_irq : STD_LOGIC;
  signal axi_ad9680_jesd_phy_en_char_align : STD_LOGIC;
  signal axi_ad9680_jesd_rstgen_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ad9680_jesd_rx_data_tdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_ad9680_jesd_rx_sof : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ad9680_jesd_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ad9680_xcvr_up_ch_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_pll_locked : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_rst : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_rst_done : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_user_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_0_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_0_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_pll_locked : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_rst : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_rst_done : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_user_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_1_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_1_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_pll_locked : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_rst : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_rst_done : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_user_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_2_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_2_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_lpm_dfe_n : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_out_clk_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_pll_locked : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_rate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_rst : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_rst_done : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_sys_clk_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_user_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_ch_3_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_ch_3_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_es_0_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_0_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_0_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_0_reset : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_0_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_0_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_1_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_es_1_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_1_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_1_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_1_reset : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_1_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_1_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_2_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_es_2_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_2_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_2_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_2_reset : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_2_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_2_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_3_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ad9680_xcvr_up_es_3_enb : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_3_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_3_ready : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_3_reset : STD_LOGIC;
  signal axi_ad9680_xcvr_up_es_3_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ad9680_xcvr_up_es_3_wr : STD_LOGIC;
  signal axi_ad9680_xcvr_up_pll_rst : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M00_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M01_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M02_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M03_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M04_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M05_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M06_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M07_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARLOCK : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWLOCK : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_RLAST : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_WLAST : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M08_AXI_WVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARLOCK : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_ARVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWLOCK : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_AWVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_BREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_BVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_RLAST : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_RREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_RVALID : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_WLAST : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_WREADY : STD_LOGIC;
  signal axi_cpu_interconnect_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cpu_interconnect_M09_AXI_WVALID : STD_LOGIC;
  signal axi_hp1_interconnect_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_hp1_interconnect_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_hp1_interconnect_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_RLAST : STD_LOGIC;
  signal axi_hp1_interconnect_M00_AXI_RREADY : STD_LOGIC;
  signal axi_hp1_interconnect_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp1_interconnect_M00_AXI_RVALID : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_BREADY : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_BVALID : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_RLAST : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_RREADY : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_RVALID : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_WLAST : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_WREADY : STD_LOGIC;
  signal axi_hp3_interconnect_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_hp3_interconnect_M00_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  attribute MARK_DEBUG of clk_wiz_0_clk_out1 : signal is std.standard.true;
  attribute debug of clk_wiz_0_clk_out1 : signal is "true";
  signal edgeDetector_0_redge_o : STD_LOGIC;
  attribute MARK_DEBUG of edgeDetector_0_redge_o : signal is std.standard.true;
  attribute debug of edgeDetector_0_redge_o : signal is "true";
  signal gpio_i_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_data_0_n_1 : STD_LOGIC;
  signal rx_data_0_p_1 : STD_LOGIC;
  signal rx_data_1_n_1 : STD_LOGIC;
  signal rx_data_1_p_1 : STD_LOGIC;
  signal rx_data_2_n_1 : STD_LOGIC;
  signal rx_data_2_p_1 : STD_LOGIC;
  signal rx_data_3_n_1 : STD_LOGIC;
  signal rx_data_3_p_1 : STD_LOGIC;
  signal rx_ref_clk_0_1 : STD_LOGIC;
  signal spi0_clk_i_1 : STD_LOGIC;
  signal spi0_csn_i_1 : STD_LOGIC;
  signal spi0_sdi_i_1 : STD_LOGIC;
  signal spi0_sdo_i_1 : STD_LOGIC;
  signal spi1_clk_i_1 : STD_LOGIC;
  signal spi1_csn_i_1 : STD_LOGIC;
  signal spi1_sdi_i_1 : STD_LOGIC;
  signal spi1_sdo_i_1 : STD_LOGIC;
  signal sync_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_concat_intc_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sys_cpu_clk : STD_LOGIC;
  signal sys_cpu_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_cpu_resetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_ps7_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal sys_ps7_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sys_ps7_DDR_CAS_N : STD_LOGIC;
  signal sys_ps7_DDR_CKE : STD_LOGIC;
  signal sys_ps7_DDR_CK_N : STD_LOGIC;
  signal sys_ps7_DDR_CK_P : STD_LOGIC;
  signal sys_ps7_DDR_CS_N : STD_LOGIC;
  signal sys_ps7_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sys_ps7_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sys_ps7_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sys_ps7_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sys_ps7_DDR_ODT : STD_LOGIC;
  signal sys_ps7_DDR_RAS_N : STD_LOGIC;
  signal sys_ps7_DDR_RESET_N : STD_LOGIC;
  signal sys_ps7_DDR_WE_N : STD_LOGIC;
  signal sys_ps7_FCLK_RESET0_N : STD_LOGIC;
  signal sys_ps7_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal sys_ps7_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal sys_ps7_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal sys_ps7_FIXED_IO_PS_CLK : STD_LOGIC;
  signal sys_ps7_FIXED_IO_PS_PORB : STD_LOGIC;
  signal sys_ps7_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal sys_ps7_GPIO_O : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sys_ps7_GPIO_T : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sys_ps7_SPI0_MOSI_O : STD_LOGIC;
  signal sys_ps7_SPI0_SCLK_O : STD_LOGIC;
  signal sys_ps7_SPI0_SS1_O : STD_LOGIC;
  signal sys_ps7_SPI0_SS2_O : STD_LOGIC;
  signal sys_ps7_SPI0_SS_O : STD_LOGIC;
  signal sys_ps7_SPI1_MOSI_O : STD_LOGIC;
  signal sys_ps7_SPI1_SCLK_O : STD_LOGIC;
  signal sys_ps7_SPI1_SS1_O : STD_LOGIC;
  signal sys_ps7_SPI1_SS2_O : STD_LOGIC;
  signal sys_ps7_SPI1_SS_O : STD_LOGIC;
  signal sysref_1 : STD_LOGIC;
  signal sysref_2 : STD_LOGIC;
  signal tdc_0_measurement_o : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal tdc_0_wr_en_o : STD_LOGIC;
  attribute MARK_DEBUG of tdc_0_wr_en_o : signal is std.standard.true;
  attribute debug of tdc_0_wr_en_o : signal is "true";
  signal tx_data_tdata_1 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal tx_ref_clk_0_1 : STD_LOGIC;
  signal util_daq2_xcvr_rx_0_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_0_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_daq2_xcvr_rx_0_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_0_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_1_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_1_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_daq2_xcvr_rx_1_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_1_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_2_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_2_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_daq2_xcvr_rx_2_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_2_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_3_rxcharisk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_3_rxdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_daq2_xcvr_rx_3_rxdisperr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_3_rxnotintable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_daq2_xcvr_rx_out_clk_0 : STD_LOGIC;
  signal util_daq2_xcvr_tx_0_n : STD_LOGIC;
  signal util_daq2_xcvr_tx_0_p : STD_LOGIC;
  signal util_daq2_xcvr_tx_1_n : STD_LOGIC;
  signal util_daq2_xcvr_tx_1_p : STD_LOGIC;
  signal util_daq2_xcvr_tx_2_n : STD_LOGIC;
  signal util_daq2_xcvr_tx_2_p : STD_LOGIC;
  signal util_daq2_xcvr_tx_3_n : STD_LOGIC;
  signal util_daq2_xcvr_tx_3_p : STD_LOGIC;
  signal util_daq2_xcvr_tx_out_clk_0 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_BRAM_CONTROLLER_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_BRAM_CTRL_MEASURE_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_Counter_XBits1_wraparound_UNCONNECTED : STD_LOGIC;
  signal NLW_Measurements_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_State_Machine_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_UserMemoryAccess_BRAM_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_axi_ad9144_core_dac_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_core_tx_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_fifo_dac_xfer_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_jesd_tx_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_jesd_rstgen_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_jesd_rstgen_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9144_jesd_rstgen_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9144_jesd_rstgen_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9144_upack_dac_sync_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_upack_dac_valid_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_upack_dac_valid_out_1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9144_upack_dac_data_0_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_axi_ad9144_upack_dac_data_1_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_axi_ad9144_xcvr_up_status_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_core_adc_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_core_rx_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_cpack_adc_sync_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_jesd_rx_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_jesd_rx_eof_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_ad9680_jesd_rstgen_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_jesd_rstgen_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9680_jesd_rstgen_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9680_jesd_rstgen_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ad9680_xcvr_up_status_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_0_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_1_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_2_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_0_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_1_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_2_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_3_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_precursor_0_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_precursor_1_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_precursor_2_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_ad9680_xcvr_up_ch_tx_precursor_3_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_edgeDetector_0_fedge_o_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI1_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI1_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI1_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI1_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_SPI1_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_S_AXI_HP1_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_S_AXI_HP1_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_S_AXI_HP1_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_ps7_S_AXI_HP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_ps7_S_AXI_HP3_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sys_rstgen_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_rstgen_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_sys_rstgen_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_util_daq2_xcvr_rx_out_clk_1_UNCONNECTED : STD_LOGIC;
  signal NLW_util_daq2_xcvr_rx_out_clk_2_UNCONNECTED : STD_LOGIC;
  signal NLW_util_daq2_xcvr_rx_out_clk_3_UNCONNECTED : STD_LOGIC;
  signal NLW_util_daq2_xcvr_tx_out_clk_1_UNCONNECTED : STD_LOGIC;
  signal NLW_util_daq2_xcvr_tx_out_clk_2_UNCONNECTED : STD_LOGIC;
  signal NLW_util_daq2_xcvr_tx_out_clk_3_UNCONNECTED : STD_LOGIC;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of BRAM_CONTROLLER : label is "yes";
  attribute bmm_info_address_space : string;
  attribute bmm_info_address_space of BRAM_CONTROLLER : label is "byte  0x40000000 32 > system UserMemoryAccess_BRAM";
  attribute KEEP_HIERARCHY of BRAM_CTRL_MEASURE : label is "yes";
  attribute bmm_info_address_space of BRAM_CTRL_MEASURE : label is "byte  0x42000000 32 > system Measurements";
  attribute KEEP_HIERARCHY of sys_ps7 : label is "yes";
  attribute bmm_info_processor : string;
  attribute bmm_info_processor of sys_ps7 : label is "arm > system BRAM_CONTROLLER system BRAM_CTRL_MEASURE";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK_IN1_D_0_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_N";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK_IN1_D_0_clk_n : signal is "XIL_INTERFACENAME CLK_IN1_D_0, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute x_interface_info of CLK_IN1_D_0_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_P";
  attribute x_interface_info of ddr_cas_n : signal is "xilinx.com:interface:ddrx:1.0 ddr CAS_N";
  attribute x_interface_info of ddr_ck_n : signal is "xilinx.com:interface:ddrx:1.0 ddr CK_N";
  attribute x_interface_info of ddr_ck_p : signal is "xilinx.com:interface:ddrx:1.0 ddr CK_P";
  attribute x_interface_info of ddr_cke : signal is "xilinx.com:interface:ddrx:1.0 ddr CKE";
  attribute x_interface_info of ddr_cs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr CS_N";
  attribute x_interface_info of ddr_odt : signal is "xilinx.com:interface:ddrx:1.0 ddr ODT";
  attribute x_interface_info of ddr_ras_n : signal is "xilinx.com:interface:ddrx:1.0 ddr RAS_N";
  attribute x_interface_info of ddr_reset_n : signal is "xilinx.com:interface:ddrx:1.0 ddr RESET_N";
  attribute x_interface_info of ddr_we_n : signal is "xilinx.com:interface:ddrx:1.0 ddr WE_N";
  attribute x_interface_info of fixed_io_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRN";
  attribute x_interface_parameter of fixed_io_ddr_vrn : signal is "XIL_INTERFACENAME fixed_io, CAN_DEBUG false";
  attribute x_interface_info of fixed_io_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRP";
  attribute x_interface_info of fixed_io_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_CLK";
  attribute x_interface_info of fixed_io_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_PORB";
  attribute x_interface_info of fixed_io_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_SRSTB";
  attribute x_interface_info of ddr_addr : signal is "xilinx.com:interface:ddrx:1.0 ddr ADDR";
  attribute x_interface_parameter of ddr_addr : signal is "XIL_INTERFACENAME ddr, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute x_interface_info of ddr_ba : signal is "xilinx.com:interface:ddrx:1.0 ddr BA";
  attribute x_interface_info of ddr_dm : signal is "xilinx.com:interface:ddrx:1.0 ddr DM";
  attribute x_interface_info of ddr_dq : signal is "xilinx.com:interface:ddrx:1.0 ddr DQ";
  attribute x_interface_info of ddr_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr DQS_N";
  attribute x_interface_info of ddr_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 ddr DQS_P";
  attribute x_interface_info of fixed_io_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io MIO";
begin
  CLK_IN1_D_0_1_CLK_N <= CLK_IN1_D_0_clk_n;
  CLK_IN1_D_0_1_CLK_P <= CLK_IN1_D_0_clk_p;
  gpio_i_1(63 downto 0) <= gpio_i(63 downto 0);
  gpio_o(63 downto 0) <= sys_ps7_GPIO_O(63 downto 0);
  gpio_t(63 downto 0) <= sys_ps7_GPIO_T(63 downto 0);
  rx_data_0_n_1 <= rx_data_0_n;
  rx_data_0_p_1 <= rx_data_0_p;
  rx_data_1_n_1 <= rx_data_1_n;
  rx_data_1_p_1 <= rx_data_1_p;
  rx_data_2_n_1 <= rx_data_2_n;
  rx_data_2_p_1 <= rx_data_2_p;
  rx_data_3_n_1 <= rx_data_3_n;
  rx_data_3_p_1 <= rx_data_3_p;
  rx_ref_clk_0_1 <= rx_ref_clk_0;
  rx_sync_0(0) <= axi_ad9680_jesd_sync(0);
  spi0_clk_i_1 <= spi0_clk_i;
  spi0_clk_o <= sys_ps7_SPI0_SCLK_O;
  spi0_csn_0_o <= sys_ps7_SPI0_SS_O;
  spi0_csn_1_o <= sys_ps7_SPI0_SS1_O;
  spi0_csn_2_o <= sys_ps7_SPI0_SS2_O;
  spi0_csn_i_1 <= spi0_csn_i;
  spi0_sdi_i_1 <= spi0_sdi_i;
  spi0_sdo_i_1 <= spi0_sdo_i;
  spi0_sdo_o <= sys_ps7_SPI0_MOSI_O;
  spi1_clk_i_1 <= spi1_clk_i;
  spi1_clk_o <= sys_ps7_SPI1_SCLK_O;
  spi1_csn_0_o <= sys_ps7_SPI1_SS_O;
  spi1_csn_1_o <= sys_ps7_SPI1_SS1_O;
  spi1_csn_2_o <= sys_ps7_SPI1_SS2_O;
  spi1_csn_i_1 <= spi1_csn_i;
  spi1_sdi_i_1 <= spi1_sdi_i;
  spi1_sdo_i_1 <= spi1_sdo_i;
  spi1_sdo_o <= sys_ps7_SPI1_MOSI_O;
  sync_1(0) <= tx_sync_0(0);
  sysref_1 <= tx_sysref_0;
  sysref_2 <= rx_sysref_0;
  tx_data_0_n <= util_daq2_xcvr_tx_0_n;
  tx_data_0_p <= util_daq2_xcvr_tx_0_p;
  tx_data_1_n <= util_daq2_xcvr_tx_1_n;
  tx_data_1_p <= util_daq2_xcvr_tx_1_p;
  tx_data_2_n <= util_daq2_xcvr_tx_2_n;
  tx_data_2_p <= util_daq2_xcvr_tx_2_p;
  tx_data_3_n <= util_daq2_xcvr_tx_3_n;
  tx_data_3_p <= util_daq2_xcvr_tx_3_p;
  tx_ref_clk_0_1 <= tx_ref_clk_0;
BRAM_CONTROLLER: component system_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => NLW_BRAM_CONTROLLER_bram_rst_a_UNCONNECTED,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(12 downto 0) => axi_cpu_interconnect_M08_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_cpu_interconnect_M08_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_cpu_interconnect_M08_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arlen(7 downto 0) => axi_cpu_interconnect_M08_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_cpu_interconnect_M08_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M08_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M08_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_cpu_interconnect_M08_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_cpu_interconnect_M08_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_cpu_interconnect_M08_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_cpu_interconnect_M08_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_cpu_interconnect_M08_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_cpu_interconnect_M08_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_cpu_interconnect_M08_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M08_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M08_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_cpu_interconnect_M08_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_cpu_interconnect_M08_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M08_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_cpu_interconnect_M08_AXI_RLAST,
      s_axi_rready => axi_cpu_interconnect_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M08_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_cpu_interconnect_M08_AXI_WLAST,
      s_axi_wready => axi_cpu_interconnect_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M08_AXI_WVALID
    );
BRAM_CTRL_MEASURE: component system_BRAM_CONTROLLER_0
     port map (
      bram_addr_a(12 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => BRAM_CTRL_MEASURE_BRAM_PORTA_CLK,
      bram_en_a => BRAM_CTRL_MEASURE_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => NLW_BRAM_CTRL_MEASURE_bram_rst_a_UNCONNECTED,
      bram_we_a(3 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(12 downto 0) => axi_cpu_interconnect_M09_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_cpu_interconnect_M09_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_cpu_interconnect_M09_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arlen(7 downto 0) => axi_cpu_interconnect_M09_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_cpu_interconnect_M09_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M09_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M09_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_cpu_interconnect_M09_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_cpu_interconnect_M09_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_cpu_interconnect_M09_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_cpu_interconnect_M09_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_cpu_interconnect_M09_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_cpu_interconnect_M09_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_cpu_interconnect_M09_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M09_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M09_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_cpu_interconnect_M09_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_cpu_interconnect_M09_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M09_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M09_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M09_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M09_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_cpu_interconnect_M09_AXI_RLAST,
      s_axi_rready => axi_cpu_interconnect_M09_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M09_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M09_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M09_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_cpu_interconnect_M09_AXI_WLAST,
      s_axi_wready => axi_cpu_interconnect_M09_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M09_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M09_AXI_WVALID
    );
Counter_XBits: component system_Counter_Xbits_0_0
     port map (
      Address(11 downto 0) => Counter_Xbits_0_Address(11 downto 0),
      Clk => util_daq2_xcvr_rx_out_clk_0,
      Enable => StateMachine_0_Write_Enable,
      Reset => StateMachine_0_Reset_out,
      wraparound => Counter_Xbits_0_wraparound
    );
Counter_XBits1: component system_Counter_XBits_1
     port map (
      Address(12 downto 0) => Counter_XBits1_Address(12 downto 0),
      Clk => clk_wiz_0_clk_out1,
      Enable => edgeDetector_0_redge_o,
      Reset => GND2_dout(0),
      wraparound => NLW_Counter_XBits1_wraparound_UNCONNECTED
    );
DFlipFlop_0: component system_DFlipFlop_0_0
     port map (
      inSignal => Singleshot_0_single_shot,
      outSignal => DFlipFlop_0_outSignal,
      ref_clk => util_daq2_xcvr_rx_out_clk_0
    );
ExtendBus: component system_xlconcat_0_0
     port map (
      In0(20 downto 0) => tdc_0_measurement_o(20 downto 0),
      In1(10 downto 0) => xlconstant_1_dout1(10 downto 0),
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
GND: component system_xlconstant_1_0
     port map (
      dout(0) => VCC_dout(0)
    );
GND1: component system_xlconstant_1_2
     port map (
      dout(10 downto 0) => xlconstant_1_dout1(10 downto 0)
    );
GND2: component system_VCC_0
     port map (
      dout(0) => GND2_dout(0)
    );
GND_1: component system_GND_1_0
     port map (
      dout(0) => GND_1_dout(0)
    );
Measurements: component system_UserMemoryAccess_BRAM_0
     port map (
      addra(12 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_ADDR(12 downto 0),
      addrb(12 downto 0) => Counter_XBits1_Address(12 downto 0),
      clka => BRAM_CTRL_MEASURE_BRAM_PORTA_CLK,
      clkb => clk_wiz_0_clk_out1,
      dina(31 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => xlconcat_0_dout(31 downto 0),
      douta(31 downto 0) => BRAM_CTRL_MEASURE_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => NLW_Measurements_doutb_UNCONNECTED(31 downto 0),
      ena => BRAM_CTRL_MEASURE_BRAM_PORTA_EN,
      wea(0) => BRAM_CTRL_MEASURE_BRAM_PORTA_WE(0),
      web(0) => edgeDetector_0_redge_o
    );
Mem_Buffer_0: component system_Mem_Buffer_0_1
     port map (
      clk_in => util_daq2_xcvr_tx_out_clk_0,
      enable => axi_ad9144_core_dac_enable_0,
      mem_out_0(63 downto 0) => Mem_Buffer_0_mem_out_0(63 downto 0),
      mem_out_1(63 downto 0) => Mem_Buffer_0_mem_out_1(63 downto 0),
      single_shot => Singleshot_0_single_shot,
      val_info => axi_ad9144_core_dac_valid_0
    );
Singleshot_0: component system_Singleshot_0_0
     port map (
      s00_axi_aclk => sys_cpu_clk,
      s00_axi_araddr(3 downto 0) => axi_cpu_interconnect_M07_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => sys_cpu_resetn(0),
      s00_axi_arprot(2 downto 0) => axi_cpu_interconnect_M07_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_cpu_interconnect_M07_AXI_ARREADY,
      s00_axi_arvalid => axi_cpu_interconnect_M07_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_cpu_interconnect_M07_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_cpu_interconnect_M07_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_cpu_interconnect_M07_AXI_AWREADY,
      s00_axi_awvalid => axi_cpu_interconnect_M07_AXI_AWVALID,
      s00_axi_bready => axi_cpu_interconnect_M07_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_cpu_interconnect_M07_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_cpu_interconnect_M07_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_cpu_interconnect_M07_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_cpu_interconnect_M07_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_cpu_interconnect_M07_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_cpu_interconnect_M07_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_cpu_interconnect_M07_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_cpu_interconnect_M07_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M07_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_cpu_interconnect_M07_AXI_WVALID,
      single_shot => Singleshot_0_single_shot
    );
Start_1CLK_STOP_0: component system_Start_1CLK_STOP_0_0
     port map (
      clk_i => clk_wiz_0_clk_out1,
      start_o => Start_1CLK_STOP_0_start_o,
      stop_o => Start_1CLK_STOP_0_stop_o,
      trigger_i => Singleshot_0_single_shot
    );
State_Machine: component system_StateMachine_0_0
     port map (
      Capture => DFlipFlop_0_outSignal,
      Clk => util_daq2_xcvr_rx_out_clk_0,
      Ready => NLW_State_Machine_Ready_UNCONNECTED,
      Reset_in => VCC_dout(0),
      Reset_out => StateMachine_0_Reset_out,
      Write_Enable => StateMachine_0_Write_Enable,
      val_info => axi_ad9680_cpack_adc_valid,
      wraparound => Counter_Xbits_0_wraparound
    );
UserMemoryAccess_BRAM: component system_blk_mem_gen_0_0
     port map (
      addra(13) => '0',
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      addrb(11 downto 0) => Counter_Xbits_0_Address(11 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => util_daq2_xcvr_rx_out_clk_0,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(127 downto 0) => axi_ad9680_cpack_adc_data(127 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(127 downto 0) => NLW_UserMemoryAccess_BRAM_doutb_UNCONNECTED(127 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      wea(0) => axi_bram_ctrl_0_BRAM_PORTA_WE(0),
      web(0) => StateMachine_0_Write_Enable
    );
VCC: component system_xlconstant_1_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
axi_ad9144_core: component system_axi_ad9144_core_0
     port map (
      dac_clk => NLW_axi_ad9144_core_dac_clk_UNCONNECTED,
      dac_ddata_0(63 downto 0) => Mem_Buffer_0_mem_out_0(63 downto 0),
      dac_ddata_1(63 downto 0) => Mem_Buffer_0_mem_out_1(63 downto 0),
      dac_dunf => axi_ad9144_fifo_dac_dunf,
      dac_enable_0 => axi_ad9144_core_dac_enable_0,
      dac_enable_1 => axi_ad9144_core_dac_enable_1,
      dac_valid_0 => axi_ad9144_core_dac_valid_0,
      dac_valid_1 => axi_ad9144_core_dac_valid_1,
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(15 downto 0) => axi_cpu_interconnect_M01_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M01_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M01_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_cpu_interconnect_M01_AXI_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M01_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M01_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M01_AXI_WVALID,
      tx_clk => util_daq2_xcvr_tx_out_clk_0,
      tx_data(127 downto 0) => tx_data_tdata_1(127 downto 0),
      tx_ready => '0',
      tx_valid => NLW_axi_ad9144_core_tx_valid_UNCONNECTED
    );
axi_ad9144_dma: component system_axi_ad9144_dma_0
     port map (
      irq => axi_ad9144_dma_irq,
      m_axis_aclk => sys_cpu_clk,
      m_axis_data(127 downto 0) => axi_ad9144_dma_m_axis_data(127 downto 0),
      m_axis_last => axi_ad9144_dma_m_axis_last,
      m_axis_ready => axi_ad9144_fifo_dma_ready,
      m_axis_valid => axi_ad9144_dma_m_axis_valid,
      m_axis_xfer_req => axi_ad9144_dma_m_axis_xfer_req,
      m_src_axi_aclk => sys_cpu_clk,
      m_src_axi_araddr(29 downto 0) => S00_AXI_4_ARADDR(29 downto 0),
      m_src_axi_arburst(1 downto 0) => S00_AXI_4_ARBURST(1 downto 0),
      m_src_axi_arcache(3 downto 0) => S00_AXI_4_ARCACHE(3 downto 0),
      m_src_axi_aresetn => sys_cpu_resetn(0),
      m_src_axi_arlen(3 downto 0) => S00_AXI_4_ARLEN(3 downto 0),
      m_src_axi_arprot(2 downto 0) => S00_AXI_4_ARPROT(2 downto 0),
      m_src_axi_arready => S00_AXI_4_ARREADY,
      m_src_axi_arsize(2 downto 0) => S00_AXI_4_ARSIZE(2 downto 0),
      m_src_axi_arvalid => S00_AXI_4_ARVALID,
      m_src_axi_rdata(127 downto 0) => S00_AXI_4_RDATA(127 downto 0),
      m_src_axi_rlast => S00_AXI_4_RLAST,
      m_src_axi_rready => S00_AXI_4_RREADY,
      m_src_axi_rresp(1 downto 0) => S00_AXI_4_RRESP(1 downto 0),
      m_src_axi_rvalid => S00_AXI_4_RVALID,
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(11 downto 0) => axi_cpu_interconnect_M03_AXI_ARADDR(11 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M03_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M03_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M03_AXI_ARVALID,
      s_axi_awaddr(11 downto 0) => axi_cpu_interconnect_M03_AXI_AWADDR(11 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M03_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M03_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M03_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M03_AXI_WVALID
    );
axi_ad9144_fifo: component system_axi_ad9144_fifo_0
     port map (
      bypass => xlconstant_0_dout(0),
      dac_clk => util_daq2_xcvr_tx_out_clk_0,
      dac_data(127 downto 0) => axi_ad9144_fifo_dac_data(127 downto 0),
      dac_dunf => axi_ad9144_fifo_dac_dunf,
      dac_rst => axi_ad9144_jesd_rstgen_peripheral_reset(0),
      dac_valid => axi_ad9144_upack_dac_valid,
      dac_xfer_out => NLW_axi_ad9144_fifo_dac_xfer_out_UNCONNECTED,
      dma_clk => sys_cpu_clk,
      dma_data(127 downto 0) => axi_ad9144_dma_m_axis_data(127 downto 0),
      dma_ready => axi_ad9144_fifo_dma_ready,
      dma_rst => sys_cpu_reset(0),
      dma_valid => axi_ad9144_dma_m_axis_valid,
      dma_xfer_last => axi_ad9144_dma_m_axis_last,
      dma_xfer_req => axi_ad9144_dma_m_axis_xfer_req
    );
axi_ad9144_jesd: entity work.axi_ad9144_jesd_imp_1POUUDD
     port map (
      device_clk => util_daq2_xcvr_tx_out_clk_0,
      irq => axi_ad9144_jesd_irq,
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(13 downto 0) => axi_cpu_interconnect_M02_AXI_ARADDR(13 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M02_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M02_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M02_AXI_ARVALID,
      s_axi_awaddr(13 downto 0) => axi_cpu_interconnect_M02_AXI_AWADDR(13 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M02_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M02_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M02_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M02_AXI_WVALID,
      sync(0) => sync_1(0),
      sysref => sysref_1,
      tx_data_tdata(127 downto 0) => tx_data_tdata_1(127 downto 0),
      tx_data_tready => NLW_axi_ad9144_jesd_tx_data_tready_UNCONNECTED,
      tx_data_tvalid => '0',
      tx_phy0_txcharisk(3 downto 0) => axi_ad9144_jesd_tx_phy0_txcharisk(3 downto 0),
      tx_phy0_txdata(31 downto 0) => axi_ad9144_jesd_tx_phy0_txdata(31 downto 0),
      tx_phy1_txcharisk(3 downto 0) => axi_ad9144_jesd_tx_phy1_txcharisk(3 downto 0),
      tx_phy1_txdata(31 downto 0) => axi_ad9144_jesd_tx_phy1_txdata(31 downto 0),
      tx_phy2_txcharisk(3 downto 0) => axi_ad9144_jesd_tx_phy2_txcharisk(3 downto 0),
      tx_phy2_txdata(31 downto 0) => axi_ad9144_jesd_tx_phy2_txdata(31 downto 0),
      tx_phy3_txcharisk(3 downto 0) => axi_ad9144_jesd_tx_phy3_txcharisk(3 downto 0),
      tx_phy3_txdata(31 downto 0) => axi_ad9144_jesd_tx_phy3_txdata(31 downto 0)
    );
axi_ad9144_jesd_rstgen: component system_axi_ad9144_jesd_rstgen_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_axi_ad9144_jesd_rstgen_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => sys_cpu_resetn(0),
      interconnect_aresetn(0) => NLW_axi_ad9144_jesd_rstgen_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_axi_ad9144_jesd_rstgen_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_axi_ad9144_jesd_rstgen_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => axi_ad9144_jesd_rstgen_peripheral_reset(0),
      slowest_sync_clk => util_daq2_xcvr_tx_out_clk_0
    );
axi_ad9144_upack: component system_axi_ad9144_upack_0
     port map (
      dac_clk => util_daq2_xcvr_tx_out_clk_0,
      dac_data(127 downto 0) => axi_ad9144_fifo_dac_data(127 downto 0),
      dac_data_0(63 downto 0) => NLW_axi_ad9144_upack_dac_data_0_UNCONNECTED(63 downto 0),
      dac_data_1(63 downto 0) => NLW_axi_ad9144_upack_dac_data_1_UNCONNECTED(63 downto 0),
      dac_enable_0 => axi_ad9144_core_dac_enable_0,
      dac_enable_1 => axi_ad9144_core_dac_enable_1,
      dac_sync => NLW_axi_ad9144_upack_dac_sync_UNCONNECTED,
      dac_valid => axi_ad9144_upack_dac_valid,
      dac_valid_0 => axi_ad9144_core_dac_valid_0,
      dac_valid_1 => axi_ad9144_core_dac_valid_1,
      dac_valid_out_0 => NLW_axi_ad9144_upack_dac_valid_out_0_UNCONNECTED,
      dac_valid_out_1 => NLW_axi_ad9144_upack_dac_valid_out_1_UNCONNECTED
    );
axi_ad9144_xcvr: component system_axi_ad9144_xcvr_0
     port map (
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(15 downto 0) => axi_cpu_interconnect_M00_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M00_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M00_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_cpu_interconnect_M00_AXI_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M00_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M00_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M00_AXI_WVALID,
      up_ch_addr_0(11 downto 0) => axi_ad9144_xcvr_up_ch_0_addr(11 downto 0),
      up_ch_addr_1(11 downto 0) => axi_ad9144_xcvr_up_ch_1_addr(11 downto 0),
      up_ch_addr_2(11 downto 0) => axi_ad9144_xcvr_up_ch_2_addr(11 downto 0),
      up_ch_addr_3(11 downto 0) => axi_ad9144_xcvr_up_ch_3_addr(11 downto 0),
      up_ch_enb_0 => axi_ad9144_xcvr_up_ch_0_enb,
      up_ch_enb_1 => axi_ad9144_xcvr_up_ch_1_enb,
      up_ch_enb_2 => axi_ad9144_xcvr_up_ch_2_enb,
      up_ch_enb_3 => axi_ad9144_xcvr_up_ch_3_enb,
      up_ch_lpm_dfe_n_0 => axi_ad9144_xcvr_up_ch_0_lpm_dfe_n,
      up_ch_lpm_dfe_n_1 => axi_ad9144_xcvr_up_ch_1_lpm_dfe_n,
      up_ch_lpm_dfe_n_2 => axi_ad9144_xcvr_up_ch_2_lpm_dfe_n,
      up_ch_lpm_dfe_n_3 => axi_ad9144_xcvr_up_ch_3_lpm_dfe_n,
      up_ch_out_clk_sel_0(2 downto 0) => axi_ad9144_xcvr_up_ch_0_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_1(2 downto 0) => axi_ad9144_xcvr_up_ch_1_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_2(2 downto 0) => axi_ad9144_xcvr_up_ch_2_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_3(2 downto 0) => axi_ad9144_xcvr_up_ch_3_out_clk_sel(2 downto 0),
      up_ch_pll_locked_0 => axi_ad9144_xcvr_up_ch_0_pll_locked,
      up_ch_pll_locked_1 => axi_ad9144_xcvr_up_ch_1_pll_locked,
      up_ch_pll_locked_2 => axi_ad9144_xcvr_up_ch_2_pll_locked,
      up_ch_pll_locked_3 => axi_ad9144_xcvr_up_ch_3_pll_locked,
      up_ch_rate_0(2 downto 0) => axi_ad9144_xcvr_up_ch_0_rate(2 downto 0),
      up_ch_rate_1(2 downto 0) => axi_ad9144_xcvr_up_ch_1_rate(2 downto 0),
      up_ch_rate_2(2 downto 0) => axi_ad9144_xcvr_up_ch_2_rate(2 downto 0),
      up_ch_rate_3(2 downto 0) => axi_ad9144_xcvr_up_ch_3_rate(2 downto 0),
      up_ch_rdata_0(15 downto 0) => axi_ad9144_xcvr_up_ch_0_rdata(15 downto 0),
      up_ch_rdata_1(15 downto 0) => axi_ad9144_xcvr_up_ch_1_rdata(15 downto 0),
      up_ch_rdata_2(15 downto 0) => axi_ad9144_xcvr_up_ch_2_rdata(15 downto 0),
      up_ch_rdata_3(15 downto 0) => axi_ad9144_xcvr_up_ch_3_rdata(15 downto 0),
      up_ch_ready_0 => axi_ad9144_xcvr_up_ch_0_ready,
      up_ch_ready_1 => axi_ad9144_xcvr_up_ch_1_ready,
      up_ch_ready_2 => axi_ad9144_xcvr_up_ch_2_ready,
      up_ch_ready_3 => axi_ad9144_xcvr_up_ch_3_ready,
      up_ch_rst_0 => axi_ad9144_xcvr_up_ch_0_rst,
      up_ch_rst_1 => axi_ad9144_xcvr_up_ch_1_rst,
      up_ch_rst_2 => axi_ad9144_xcvr_up_ch_2_rst,
      up_ch_rst_3 => axi_ad9144_xcvr_up_ch_3_rst,
      up_ch_rst_done_0 => axi_ad9144_xcvr_up_ch_0_rst_done,
      up_ch_rst_done_1 => axi_ad9144_xcvr_up_ch_1_rst_done,
      up_ch_rst_done_2 => axi_ad9144_xcvr_up_ch_2_rst_done,
      up_ch_rst_done_3 => axi_ad9144_xcvr_up_ch_3_rst_done,
      up_ch_sys_clk_sel_0(1 downto 0) => axi_ad9144_xcvr_up_ch_0_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_1(1 downto 0) => axi_ad9144_xcvr_up_ch_1_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_2(1 downto 0) => axi_ad9144_xcvr_up_ch_2_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_3(1 downto 0) => axi_ad9144_xcvr_up_ch_3_sys_clk_sel(1 downto 0),
      up_ch_tx_diffctrl_0(3 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_diffctrl(3 downto 0),
      up_ch_tx_diffctrl_1(3 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_diffctrl(3 downto 0),
      up_ch_tx_diffctrl_2(3 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_diffctrl(3 downto 0),
      up_ch_tx_diffctrl_3(3 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_diffctrl(3 downto 0),
      up_ch_tx_postcursor_0(4 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_postcursor(4 downto 0),
      up_ch_tx_postcursor_1(4 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_postcursor(4 downto 0),
      up_ch_tx_postcursor_2(4 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_postcursor(4 downto 0),
      up_ch_tx_postcursor_3(4 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_postcursor(4 downto 0),
      up_ch_tx_precursor_0(4 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_precursor(4 downto 0),
      up_ch_tx_precursor_1(4 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_precursor(4 downto 0),
      up_ch_tx_precursor_2(4 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_precursor(4 downto 0),
      up_ch_tx_precursor_3(4 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_precursor(4 downto 0),
      up_ch_user_ready_0 => axi_ad9144_xcvr_up_ch_0_user_ready,
      up_ch_user_ready_1 => axi_ad9144_xcvr_up_ch_1_user_ready,
      up_ch_user_ready_2 => axi_ad9144_xcvr_up_ch_2_user_ready,
      up_ch_user_ready_3 => axi_ad9144_xcvr_up_ch_3_user_ready,
      up_ch_wdata_0(15 downto 0) => axi_ad9144_xcvr_up_ch_0_wdata(15 downto 0),
      up_ch_wdata_1(15 downto 0) => axi_ad9144_xcvr_up_ch_1_wdata(15 downto 0),
      up_ch_wdata_2(15 downto 0) => axi_ad9144_xcvr_up_ch_2_wdata(15 downto 0),
      up_ch_wdata_3(15 downto 0) => axi_ad9144_xcvr_up_ch_3_wdata(15 downto 0),
      up_ch_wr_0 => axi_ad9144_xcvr_up_ch_0_wr,
      up_ch_wr_1 => axi_ad9144_xcvr_up_ch_1_wr,
      up_ch_wr_2 => axi_ad9144_xcvr_up_ch_2_wr,
      up_ch_wr_3 => axi_ad9144_xcvr_up_ch_3_wr,
      up_cm_addr_0(11 downto 0) => axi_ad9144_xcvr_up_cm_0_addr(11 downto 0),
      up_cm_enb_0 => axi_ad9144_xcvr_up_cm_0_enb,
      up_cm_rdata_0(15 downto 0) => axi_ad9144_xcvr_up_cm_0_rdata(15 downto 0),
      up_cm_ready_0 => axi_ad9144_xcvr_up_cm_0_ready,
      up_cm_wdata_0(15 downto 0) => axi_ad9144_xcvr_up_cm_0_wdata(15 downto 0),
      up_cm_wr_0 => axi_ad9144_xcvr_up_cm_0_wr,
      up_pll_rst => axi_ad9144_xcvr_up_pll_rst,
      up_status => NLW_axi_ad9144_xcvr_up_status_UNCONNECTED
    );
axi_ad9680_core: component system_axi_ad9680_core_0
     port map (
      adc_clk => NLW_axi_ad9680_core_adc_clk_UNCONNECTED,
      adc_data_0(63 downto 0) => axi_ad9680_core_adc_data_0(63 downto 0),
      adc_data_1(63 downto 0) => axi_ad9680_core_adc_data_1(63 downto 0),
      adc_dovf => '0',
      adc_enable_0 => axi_ad9680_core_adc_enable_0,
      adc_enable_1 => axi_ad9680_core_adc_enable_1,
      adc_valid_0 => axi_ad9680_core_adc_valid_0,
      adc_valid_1 => axi_ad9680_core_adc_valid_1,
      rx_clk => util_daq2_xcvr_rx_out_clk_0,
      rx_data(127 downto 0) => axi_ad9680_jesd_rx_data_tdata(127 downto 0),
      rx_ready => NLW_axi_ad9680_core_rx_ready_UNCONNECTED,
      rx_sof(3 downto 0) => axi_ad9680_jesd_rx_sof(3 downto 0),
      rx_valid => '0',
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(15 downto 0) => axi_cpu_interconnect_M05_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M05_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M05_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M05_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_cpu_interconnect_M05_AXI_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M05_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M05_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M05_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M05_AXI_WVALID
    );
axi_ad9680_cpack: component system_axi_ad9680_cpack_0
     port map (
      adc_clk => util_daq2_xcvr_rx_out_clk_0,
      adc_data(127 downto 0) => axi_ad9680_cpack_adc_data(127 downto 0),
      adc_data_0(63 downto 0) => axi_ad9680_core_adc_data_0(63 downto 0),
      adc_data_1(63 downto 0) => axi_ad9680_core_adc_data_1(63 downto 0),
      adc_enable_0 => axi_ad9680_core_adc_enable_0,
      adc_enable_1 => axi_ad9680_core_adc_enable_1,
      adc_rst => axi_ad9680_jesd_rstgen_peripheral_reset(0),
      adc_sync => NLW_axi_ad9680_cpack_adc_sync_UNCONNECTED,
      adc_valid => axi_ad9680_cpack_adc_valid,
      adc_valid_0 => axi_ad9680_core_adc_valid_0,
      adc_valid_1 => axi_ad9680_core_adc_valid_1
    );
axi_ad9680_jesd: entity work.axi_ad9680_jesd_imp_9H50XX
     port map (
      device_clk => util_daq2_xcvr_rx_out_clk_0,
      irq => axi_ad9680_jesd_irq,
      phy_en_char_align => axi_ad9680_jesd_phy_en_char_align,
      rx_data_tdata(127 downto 0) => axi_ad9680_jesd_rx_data_tdata(127 downto 0),
      rx_data_tvalid => NLW_axi_ad9680_jesd_rx_data_tvalid_UNCONNECTED,
      rx_eof(3 downto 0) => NLW_axi_ad9680_jesd_rx_eof_UNCONNECTED(3 downto 0),
      rx_phy0_rxcharisk(3 downto 0) => util_daq2_xcvr_rx_0_rxcharisk(3 downto 0),
      rx_phy0_rxdata(31 downto 0) => util_daq2_xcvr_rx_0_rxdata(31 downto 0),
      rx_phy0_rxdisperr(3 downto 0) => util_daq2_xcvr_rx_0_rxdisperr(3 downto 0),
      rx_phy0_rxnotintable(3 downto 0) => util_daq2_xcvr_rx_0_rxnotintable(3 downto 0),
      rx_phy1_rxcharisk(3 downto 0) => util_daq2_xcvr_rx_1_rxcharisk(3 downto 0),
      rx_phy1_rxdata(31 downto 0) => util_daq2_xcvr_rx_1_rxdata(31 downto 0),
      rx_phy1_rxdisperr(3 downto 0) => util_daq2_xcvr_rx_1_rxdisperr(3 downto 0),
      rx_phy1_rxnotintable(3 downto 0) => util_daq2_xcvr_rx_1_rxnotintable(3 downto 0),
      rx_phy2_rxcharisk(3 downto 0) => util_daq2_xcvr_rx_2_rxcharisk(3 downto 0),
      rx_phy2_rxdata(31 downto 0) => util_daq2_xcvr_rx_2_rxdata(31 downto 0),
      rx_phy2_rxdisperr(3 downto 0) => util_daq2_xcvr_rx_2_rxdisperr(3 downto 0),
      rx_phy2_rxnotintable(3 downto 0) => util_daq2_xcvr_rx_2_rxnotintable(3 downto 0),
      rx_phy3_rxcharisk(3 downto 0) => util_daq2_xcvr_rx_3_rxcharisk(3 downto 0),
      rx_phy3_rxdata(31 downto 0) => util_daq2_xcvr_rx_3_rxdata(31 downto 0),
      rx_phy3_rxdisperr(3 downto 0) => util_daq2_xcvr_rx_3_rxdisperr(3 downto 0),
      rx_phy3_rxnotintable(3 downto 0) => util_daq2_xcvr_rx_3_rxnotintable(3 downto 0),
      rx_sof(3 downto 0) => axi_ad9680_jesd_rx_sof(3 downto 0),
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(13 downto 0) => axi_cpu_interconnect_M06_AXI_ARADDR(13 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M06_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M06_AXI_ARVALID,
      s_axi_awaddr(13 downto 0) => axi_cpu_interconnect_M06_AXI_AWADDR(13 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M06_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M06_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M06_AXI_WVALID,
      sync(0) => axi_ad9680_jesd_sync(0),
      sysref => sysref_2
    );
axi_ad9680_jesd_rstgen: component system_axi_ad9680_jesd_rstgen_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_axi_ad9680_jesd_rstgen_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => sys_cpu_resetn(0),
      interconnect_aresetn(0) => NLW_axi_ad9680_jesd_rstgen_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_axi_ad9680_jesd_rstgen_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_axi_ad9680_jesd_rstgen_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => axi_ad9680_jesd_rstgen_peripheral_reset(0),
      slowest_sync_clk => util_daq2_xcvr_rx_out_clk_0
    );
axi_ad9680_xcvr: component system_axi_ad9680_xcvr_0
     port map (
      m_axi_araddr(31 downto 0) => S00_AXI_3_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => S00_AXI_3_ARPROT(2 downto 0),
      m_axi_arready => S00_AXI_3_ARREADY,
      m_axi_arvalid => S00_AXI_3_ARVALID,
      m_axi_awaddr(31 downto 0) => S00_AXI_3_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => S00_AXI_3_AWPROT(2 downto 0),
      m_axi_awready => S00_AXI_3_AWREADY,
      m_axi_awvalid => S00_AXI_3_AWVALID,
      m_axi_bready => S00_AXI_3_BREADY,
      m_axi_bresp(1 downto 0) => S00_AXI_3_BRESP(1 downto 0),
      m_axi_bvalid => S00_AXI_3_BVALID,
      m_axi_rdata(31 downto 0) => S00_AXI_3_RDATA(31 downto 0),
      m_axi_rready => S00_AXI_3_RREADY,
      m_axi_rresp(1 downto 0) => S00_AXI_3_RRESP(1 downto 0),
      m_axi_rvalid => S00_AXI_3_RVALID,
      m_axi_wdata(31 downto 0) => S00_AXI_3_WDATA(31 downto 0),
      m_axi_wready => S00_AXI_3_WREADY,
      m_axi_wstrb(3 downto 0) => S00_AXI_3_WSTRB(3 downto 0),
      m_axi_wvalid => S00_AXI_3_WVALID,
      s_axi_aclk => sys_cpu_clk,
      s_axi_araddr(15 downto 0) => axi_cpu_interconnect_M04_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => sys_cpu_resetn(0),
      s_axi_arprot(2 downto 0) => axi_cpu_interconnect_M04_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_cpu_interconnect_M04_AXI_ARREADY,
      s_axi_arvalid => axi_cpu_interconnect_M04_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_cpu_interconnect_M04_AXI_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => axi_cpu_interconnect_M04_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_cpu_interconnect_M04_AXI_AWREADY,
      s_axi_awvalid => axi_cpu_interconnect_M04_AXI_AWVALID,
      s_axi_bready => axi_cpu_interconnect_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_cpu_interconnect_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_cpu_interconnect_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_cpu_interconnect_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_cpu_interconnect_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_cpu_interconnect_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_cpu_interconnect_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_cpu_interconnect_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_cpu_interconnect_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_cpu_interconnect_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_cpu_interconnect_M04_AXI_WVALID,
      up_ch_addr_0(11 downto 0) => axi_ad9680_xcvr_up_ch_0_addr(11 downto 0),
      up_ch_addr_1(11 downto 0) => axi_ad9680_xcvr_up_ch_1_addr(11 downto 0),
      up_ch_addr_2(11 downto 0) => axi_ad9680_xcvr_up_ch_2_addr(11 downto 0),
      up_ch_addr_3(11 downto 0) => axi_ad9680_xcvr_up_ch_3_addr(11 downto 0),
      up_ch_enb_0 => axi_ad9680_xcvr_up_ch_0_enb,
      up_ch_enb_1 => axi_ad9680_xcvr_up_ch_1_enb,
      up_ch_enb_2 => axi_ad9680_xcvr_up_ch_2_enb,
      up_ch_enb_3 => axi_ad9680_xcvr_up_ch_3_enb,
      up_ch_lpm_dfe_n_0 => axi_ad9680_xcvr_up_ch_0_lpm_dfe_n,
      up_ch_lpm_dfe_n_1 => axi_ad9680_xcvr_up_ch_1_lpm_dfe_n,
      up_ch_lpm_dfe_n_2 => axi_ad9680_xcvr_up_ch_2_lpm_dfe_n,
      up_ch_lpm_dfe_n_3 => axi_ad9680_xcvr_up_ch_3_lpm_dfe_n,
      up_ch_out_clk_sel_0(2 downto 0) => axi_ad9680_xcvr_up_ch_0_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_1(2 downto 0) => axi_ad9680_xcvr_up_ch_1_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_2(2 downto 0) => axi_ad9680_xcvr_up_ch_2_out_clk_sel(2 downto 0),
      up_ch_out_clk_sel_3(2 downto 0) => axi_ad9680_xcvr_up_ch_3_out_clk_sel(2 downto 0),
      up_ch_pll_locked_0 => axi_ad9680_xcvr_up_ch_0_pll_locked,
      up_ch_pll_locked_1 => axi_ad9680_xcvr_up_ch_1_pll_locked,
      up_ch_pll_locked_2 => axi_ad9680_xcvr_up_ch_2_pll_locked,
      up_ch_pll_locked_3 => axi_ad9680_xcvr_up_ch_3_pll_locked,
      up_ch_rate_0(2 downto 0) => axi_ad9680_xcvr_up_ch_0_rate(2 downto 0),
      up_ch_rate_1(2 downto 0) => axi_ad9680_xcvr_up_ch_1_rate(2 downto 0),
      up_ch_rate_2(2 downto 0) => axi_ad9680_xcvr_up_ch_2_rate(2 downto 0),
      up_ch_rate_3(2 downto 0) => axi_ad9680_xcvr_up_ch_3_rate(2 downto 0),
      up_ch_rdata_0(15 downto 0) => axi_ad9680_xcvr_up_ch_0_rdata(15 downto 0),
      up_ch_rdata_1(15 downto 0) => axi_ad9680_xcvr_up_ch_1_rdata(15 downto 0),
      up_ch_rdata_2(15 downto 0) => axi_ad9680_xcvr_up_ch_2_rdata(15 downto 0),
      up_ch_rdata_3(15 downto 0) => axi_ad9680_xcvr_up_ch_3_rdata(15 downto 0),
      up_ch_ready_0 => axi_ad9680_xcvr_up_ch_0_ready,
      up_ch_ready_1 => axi_ad9680_xcvr_up_ch_1_ready,
      up_ch_ready_2 => axi_ad9680_xcvr_up_ch_2_ready,
      up_ch_ready_3 => axi_ad9680_xcvr_up_ch_3_ready,
      up_ch_rst_0 => axi_ad9680_xcvr_up_ch_0_rst,
      up_ch_rst_1 => axi_ad9680_xcvr_up_ch_1_rst,
      up_ch_rst_2 => axi_ad9680_xcvr_up_ch_2_rst,
      up_ch_rst_3 => axi_ad9680_xcvr_up_ch_3_rst,
      up_ch_rst_done_0 => axi_ad9680_xcvr_up_ch_0_rst_done,
      up_ch_rst_done_1 => axi_ad9680_xcvr_up_ch_1_rst_done,
      up_ch_rst_done_2 => axi_ad9680_xcvr_up_ch_2_rst_done,
      up_ch_rst_done_3 => axi_ad9680_xcvr_up_ch_3_rst_done,
      up_ch_sys_clk_sel_0(1 downto 0) => axi_ad9680_xcvr_up_ch_0_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_1(1 downto 0) => axi_ad9680_xcvr_up_ch_1_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_2(1 downto 0) => axi_ad9680_xcvr_up_ch_2_sys_clk_sel(1 downto 0),
      up_ch_sys_clk_sel_3(1 downto 0) => axi_ad9680_xcvr_up_ch_3_sys_clk_sel(1 downto 0),
      up_ch_tx_diffctrl_0(3 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_0_UNCONNECTED(3 downto 0),
      up_ch_tx_diffctrl_1(3 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_1_UNCONNECTED(3 downto 0),
      up_ch_tx_diffctrl_2(3 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_2_UNCONNECTED(3 downto 0),
      up_ch_tx_diffctrl_3(3 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_diffctrl_3_UNCONNECTED(3 downto 0),
      up_ch_tx_postcursor_0(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_0_UNCONNECTED(4 downto 0),
      up_ch_tx_postcursor_1(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_1_UNCONNECTED(4 downto 0),
      up_ch_tx_postcursor_2(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_2_UNCONNECTED(4 downto 0),
      up_ch_tx_postcursor_3(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_postcursor_3_UNCONNECTED(4 downto 0),
      up_ch_tx_precursor_0(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_precursor_0_UNCONNECTED(4 downto 0),
      up_ch_tx_precursor_1(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_precursor_1_UNCONNECTED(4 downto 0),
      up_ch_tx_precursor_2(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_precursor_2_UNCONNECTED(4 downto 0),
      up_ch_tx_precursor_3(4 downto 0) => NLW_axi_ad9680_xcvr_up_ch_tx_precursor_3_UNCONNECTED(4 downto 0),
      up_ch_user_ready_0 => axi_ad9680_xcvr_up_ch_0_user_ready,
      up_ch_user_ready_1 => axi_ad9680_xcvr_up_ch_1_user_ready,
      up_ch_user_ready_2 => axi_ad9680_xcvr_up_ch_2_user_ready,
      up_ch_user_ready_3 => axi_ad9680_xcvr_up_ch_3_user_ready,
      up_ch_wdata_0(15 downto 0) => axi_ad9680_xcvr_up_ch_0_wdata(15 downto 0),
      up_ch_wdata_1(15 downto 0) => axi_ad9680_xcvr_up_ch_1_wdata(15 downto 0),
      up_ch_wdata_2(15 downto 0) => axi_ad9680_xcvr_up_ch_2_wdata(15 downto 0),
      up_ch_wdata_3(15 downto 0) => axi_ad9680_xcvr_up_ch_3_wdata(15 downto 0),
      up_ch_wr_0 => axi_ad9680_xcvr_up_ch_0_wr,
      up_ch_wr_1 => axi_ad9680_xcvr_up_ch_1_wr,
      up_ch_wr_2 => axi_ad9680_xcvr_up_ch_2_wr,
      up_ch_wr_3 => axi_ad9680_xcvr_up_ch_3_wr,
      up_es_addr_0(11 downto 0) => axi_ad9680_xcvr_up_es_0_addr(11 downto 0),
      up_es_addr_1(11 downto 0) => axi_ad9680_xcvr_up_es_1_addr(11 downto 0),
      up_es_addr_2(11 downto 0) => axi_ad9680_xcvr_up_es_2_addr(11 downto 0),
      up_es_addr_3(11 downto 0) => axi_ad9680_xcvr_up_es_3_addr(11 downto 0),
      up_es_enb_0 => axi_ad9680_xcvr_up_es_0_enb,
      up_es_enb_1 => axi_ad9680_xcvr_up_es_1_enb,
      up_es_enb_2 => axi_ad9680_xcvr_up_es_2_enb,
      up_es_enb_3 => axi_ad9680_xcvr_up_es_3_enb,
      up_es_rdata_0(15 downto 0) => axi_ad9680_xcvr_up_es_0_rdata(15 downto 0),
      up_es_rdata_1(15 downto 0) => axi_ad9680_xcvr_up_es_1_rdata(15 downto 0),
      up_es_rdata_2(15 downto 0) => axi_ad9680_xcvr_up_es_2_rdata(15 downto 0),
      up_es_rdata_3(15 downto 0) => axi_ad9680_xcvr_up_es_3_rdata(15 downto 0),
      up_es_ready_0 => axi_ad9680_xcvr_up_es_0_ready,
      up_es_ready_1 => axi_ad9680_xcvr_up_es_1_ready,
      up_es_ready_2 => axi_ad9680_xcvr_up_es_2_ready,
      up_es_ready_3 => axi_ad9680_xcvr_up_es_3_ready,
      up_es_reset_0 => axi_ad9680_xcvr_up_es_0_reset,
      up_es_reset_1 => axi_ad9680_xcvr_up_es_1_reset,
      up_es_reset_2 => axi_ad9680_xcvr_up_es_2_reset,
      up_es_reset_3 => axi_ad9680_xcvr_up_es_3_reset,
      up_es_wdata_0(15 downto 0) => axi_ad9680_xcvr_up_es_0_wdata(15 downto 0),
      up_es_wdata_1(15 downto 0) => axi_ad9680_xcvr_up_es_1_wdata(15 downto 0),
      up_es_wdata_2(15 downto 0) => axi_ad9680_xcvr_up_es_2_wdata(15 downto 0),
      up_es_wdata_3(15 downto 0) => axi_ad9680_xcvr_up_es_3_wdata(15 downto 0),
      up_es_wr_0 => axi_ad9680_xcvr_up_es_0_wr,
      up_es_wr_1 => axi_ad9680_xcvr_up_es_1_wr,
      up_es_wr_2 => axi_ad9680_xcvr_up_es_2_wr,
      up_es_wr_3 => axi_ad9680_xcvr_up_es_3_wr,
      up_pll_rst => axi_ad9680_xcvr_up_pll_rst,
      up_status => NLW_axi_ad9680_xcvr_up_status_UNCONNECTED
    );
axi_cpu_interconnect: entity work.system_axi_cpu_interconnect_0
     port map (
      ACLK => sys_cpu_clk,
      ARESETN => sys_cpu_resetn(0),
      M00_ACLK => sys_cpu_clk,
      M00_ARESETN => sys_cpu_resetn(0),
      M00_AXI_araddr(15 downto 0) => axi_cpu_interconnect_M00_AXI_ARADDR(15 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_cpu_interconnect_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_cpu_interconnect_M00_AXI_ARVALID,
      M00_AXI_awaddr(15 downto 0) => axi_cpu_interconnect_M00_AXI_AWADDR(15 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_cpu_interconnect_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_cpu_interconnect_M00_AXI_AWVALID,
      M00_AXI_bready => axi_cpu_interconnect_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_cpu_interconnect_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_cpu_interconnect_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_cpu_interconnect_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_cpu_interconnect_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_cpu_interconnect_M00_AXI_WVALID,
      M01_ACLK => sys_cpu_clk,
      M01_ARESETN => sys_cpu_resetn(0),
      M01_AXI_araddr(15 downto 0) => axi_cpu_interconnect_M01_AXI_ARADDR(15 downto 0),
      M01_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_cpu_interconnect_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_cpu_interconnect_M01_AXI_ARVALID,
      M01_AXI_awaddr(15 downto 0) => axi_cpu_interconnect_M01_AXI_AWADDR(15 downto 0),
      M01_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_cpu_interconnect_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_cpu_interconnect_M01_AXI_AWVALID,
      M01_AXI_bready => axi_cpu_interconnect_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_cpu_interconnect_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_cpu_interconnect_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_cpu_interconnect_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_cpu_interconnect_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_cpu_interconnect_M01_AXI_WVALID,
      M02_ACLK => sys_cpu_clk,
      M02_ARESETN => sys_cpu_resetn(0),
      M02_AXI_araddr(13 downto 0) => axi_cpu_interconnect_M02_AXI_ARADDR(13 downto 0),
      M02_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => axi_cpu_interconnect_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_cpu_interconnect_M02_AXI_ARVALID,
      M02_AXI_awaddr(13 downto 0) => axi_cpu_interconnect_M02_AXI_AWADDR(13 downto 0),
      M02_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => axi_cpu_interconnect_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_cpu_interconnect_M02_AXI_AWVALID,
      M02_AXI_bready => axi_cpu_interconnect_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_cpu_interconnect_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_cpu_interconnect_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_cpu_interconnect_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_cpu_interconnect_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_cpu_interconnect_M02_AXI_WVALID,
      M03_ACLK => sys_cpu_clk,
      M03_ARESETN => sys_cpu_resetn(0),
      M03_AXI_araddr(11 downto 0) => axi_cpu_interconnect_M03_AXI_ARADDR(11 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => axi_cpu_interconnect_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_cpu_interconnect_M03_AXI_ARVALID,
      M03_AXI_awaddr(11 downto 0) => axi_cpu_interconnect_M03_AXI_AWADDR(11 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => axi_cpu_interconnect_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_cpu_interconnect_M03_AXI_AWVALID,
      M03_AXI_bready => axi_cpu_interconnect_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_cpu_interconnect_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_cpu_interconnect_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_cpu_interconnect_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_cpu_interconnect_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_cpu_interconnect_M03_AXI_WVALID,
      M04_ACLK => sys_cpu_clk,
      M04_ARESETN => sys_cpu_resetn(0),
      M04_AXI_araddr(15 downto 0) => axi_cpu_interconnect_M04_AXI_ARADDR(15 downto 0),
      M04_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => axi_cpu_interconnect_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_cpu_interconnect_M04_AXI_ARVALID,
      M04_AXI_awaddr(15 downto 0) => axi_cpu_interconnect_M04_AXI_AWADDR(15 downto 0),
      M04_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => axi_cpu_interconnect_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_cpu_interconnect_M04_AXI_AWVALID,
      M04_AXI_bready => axi_cpu_interconnect_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_cpu_interconnect_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_cpu_interconnect_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_cpu_interconnect_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_cpu_interconnect_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_cpu_interconnect_M04_AXI_WVALID,
      M05_ACLK => sys_cpu_clk,
      M05_ARESETN => sys_cpu_resetn(0),
      M05_AXI_araddr(15 downto 0) => axi_cpu_interconnect_M05_AXI_ARADDR(15 downto 0),
      M05_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => axi_cpu_interconnect_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_cpu_interconnect_M05_AXI_ARVALID,
      M05_AXI_awaddr(15 downto 0) => axi_cpu_interconnect_M05_AXI_AWADDR(15 downto 0),
      M05_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => axi_cpu_interconnect_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_cpu_interconnect_M05_AXI_AWVALID,
      M05_AXI_bready => axi_cpu_interconnect_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_cpu_interconnect_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_cpu_interconnect_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_cpu_interconnect_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_cpu_interconnect_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_cpu_interconnect_M05_AXI_WVALID,
      M06_ACLK => sys_cpu_clk,
      M06_ARESETN => sys_cpu_resetn(0),
      M06_AXI_araddr(13 downto 0) => axi_cpu_interconnect_M06_AXI_ARADDR(13 downto 0),
      M06_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => axi_cpu_interconnect_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_cpu_interconnect_M06_AXI_ARVALID,
      M06_AXI_awaddr(13 downto 0) => axi_cpu_interconnect_M06_AXI_AWADDR(13 downto 0),
      M06_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => axi_cpu_interconnect_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_cpu_interconnect_M06_AXI_AWVALID,
      M06_AXI_bready => axi_cpu_interconnect_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_cpu_interconnect_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_cpu_interconnect_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_cpu_interconnect_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_cpu_interconnect_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_cpu_interconnect_M06_AXI_WVALID,
      M07_ACLK => sys_cpu_clk,
      M07_ARESETN => sys_cpu_resetn(0),
      M07_AXI_araddr(31 downto 0) => axi_cpu_interconnect_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M07_AXI_ARPROT(2 downto 0),
      M07_AXI_arready => axi_cpu_interconnect_M07_AXI_ARREADY,
      M07_AXI_arvalid => axi_cpu_interconnect_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => axi_cpu_interconnect_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M07_AXI_AWPROT(2 downto 0),
      M07_AXI_awready => axi_cpu_interconnect_M07_AXI_AWREADY,
      M07_AXI_awvalid => axi_cpu_interconnect_M07_AXI_AWVALID,
      M07_AXI_bready => axi_cpu_interconnect_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => axi_cpu_interconnect_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => axi_cpu_interconnect_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => axi_cpu_interconnect_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => axi_cpu_interconnect_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => axi_cpu_interconnect_M07_AXI_WVALID,
      M08_ACLK => sys_cpu_clk,
      M08_ARESETN => sys_cpu_resetn(0),
      M08_AXI_araddr(31 downto 0) => axi_cpu_interconnect_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arburst(1 downto 0) => axi_cpu_interconnect_M08_AXI_ARBURST(1 downto 0),
      M08_AXI_arcache(3 downto 0) => axi_cpu_interconnect_M08_AXI_ARCACHE(3 downto 0),
      M08_AXI_arlen(7 downto 0) => axi_cpu_interconnect_M08_AXI_ARLEN(7 downto 0),
      M08_AXI_arlock => axi_cpu_interconnect_M08_AXI_ARLOCK,
      M08_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arready => axi_cpu_interconnect_M08_AXI_ARREADY,
      M08_AXI_arsize(2 downto 0) => axi_cpu_interconnect_M08_AXI_ARSIZE(2 downto 0),
      M08_AXI_arvalid => axi_cpu_interconnect_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => axi_cpu_interconnect_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awburst(1 downto 0) => axi_cpu_interconnect_M08_AXI_AWBURST(1 downto 0),
      M08_AXI_awcache(3 downto 0) => axi_cpu_interconnect_M08_AXI_AWCACHE(3 downto 0),
      M08_AXI_awlen(7 downto 0) => axi_cpu_interconnect_M08_AXI_AWLEN(7 downto 0),
      M08_AXI_awlock => axi_cpu_interconnect_M08_AXI_AWLOCK,
      M08_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awready => axi_cpu_interconnect_M08_AXI_AWREADY,
      M08_AXI_awsize(2 downto 0) => axi_cpu_interconnect_M08_AXI_AWSIZE(2 downto 0),
      M08_AXI_awvalid => axi_cpu_interconnect_M08_AXI_AWVALID,
      M08_AXI_bready => axi_cpu_interconnect_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => axi_cpu_interconnect_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rlast => axi_cpu_interconnect_M08_AXI_RLAST,
      M08_AXI_rready => axi_cpu_interconnect_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => axi_cpu_interconnect_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wlast => axi_cpu_interconnect_M08_AXI_WLAST,
      M08_AXI_wready => axi_cpu_interconnect_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => axi_cpu_interconnect_M08_AXI_WVALID,
      M09_ACLK => sys_cpu_clk,
      M09_ARESETN => sys_cpu_resetn(0),
      M09_AXI_araddr(31 downto 0) => axi_cpu_interconnect_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arburst(1 downto 0) => axi_cpu_interconnect_M09_AXI_ARBURST(1 downto 0),
      M09_AXI_arcache(3 downto 0) => axi_cpu_interconnect_M09_AXI_ARCACHE(3 downto 0),
      M09_AXI_arlen(7 downto 0) => axi_cpu_interconnect_M09_AXI_ARLEN(7 downto 0),
      M09_AXI_arlock => axi_cpu_interconnect_M09_AXI_ARLOCK,
      M09_AXI_arprot(2 downto 0) => axi_cpu_interconnect_M09_AXI_ARPROT(2 downto 0),
      M09_AXI_arready => axi_cpu_interconnect_M09_AXI_ARREADY,
      M09_AXI_arsize(2 downto 0) => axi_cpu_interconnect_M09_AXI_ARSIZE(2 downto 0),
      M09_AXI_arvalid => axi_cpu_interconnect_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => axi_cpu_interconnect_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awburst(1 downto 0) => axi_cpu_interconnect_M09_AXI_AWBURST(1 downto 0),
      M09_AXI_awcache(3 downto 0) => axi_cpu_interconnect_M09_AXI_AWCACHE(3 downto 0),
      M09_AXI_awlen(7 downto 0) => axi_cpu_interconnect_M09_AXI_AWLEN(7 downto 0),
      M09_AXI_awlock => axi_cpu_interconnect_M09_AXI_AWLOCK,
      M09_AXI_awprot(2 downto 0) => axi_cpu_interconnect_M09_AXI_AWPROT(2 downto 0),
      M09_AXI_awready => axi_cpu_interconnect_M09_AXI_AWREADY,
      M09_AXI_awsize(2 downto 0) => axi_cpu_interconnect_M09_AXI_AWSIZE(2 downto 0),
      M09_AXI_awvalid => axi_cpu_interconnect_M09_AXI_AWVALID,
      M09_AXI_bready => axi_cpu_interconnect_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => axi_cpu_interconnect_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => axi_cpu_interconnect_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => axi_cpu_interconnect_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rlast => axi_cpu_interconnect_M09_AXI_RLAST,
      M09_AXI_rready => axi_cpu_interconnect_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => axi_cpu_interconnect_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => axi_cpu_interconnect_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => axi_cpu_interconnect_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wlast => axi_cpu_interconnect_M09_AXI_WLAST,
      M09_AXI_wready => axi_cpu_interconnect_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => axi_cpu_interconnect_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => axi_cpu_interconnect_M09_AXI_WVALID,
      S00_ACLK => sys_cpu_clk,
      S00_ARESETN => sys_cpu_resetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_1_RLAST,
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_1_WLAST,
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
axi_hp1_interconnect: entity work.system_axi_hp1_interconnect_0
     port map (
      ACLK => sys_cpu_clk,
      ARESETN => sys_cpu_resetn(0),
      M00_ACLK => sys_cpu_clk,
      M00_ARESETN => sys_cpu_resetn(0),
      M00_AXI_araddr(29 downto 0) => axi_hp1_interconnect_M00_AXI_ARADDR(29 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_hp1_interconnect_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_hp1_interconnect_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_hp1_interconnect_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_hp1_interconnect_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_hp1_interconnect_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_hp1_interconnect_M00_AXI_ARVALID,
      M00_AXI_rdata(63 downto 0) => axi_hp1_interconnect_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_hp1_interconnect_M00_AXI_RLAST,
      M00_AXI_rready => axi_hp1_interconnect_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_hp1_interconnect_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_hp1_interconnect_M00_AXI_RVALID,
      S00_ACLK => sys_cpu_clk,
      S00_ARESETN => sys_cpu_resetn(0),
      S00_AXI_araddr(29 downto 0) => S00_AXI_4_ARADDR(29 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_4_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_4_ARCACHE(3 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_4_ARLEN(3 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_4_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_4_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_4_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_4_ARVALID,
      S00_AXI_rdata(127 downto 0) => S00_AXI_4_RDATA(127 downto 0),
      S00_AXI_rlast => S00_AXI_4_RLAST,
      S00_AXI_rready => S00_AXI_4_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_4_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_4_RVALID
    );
axi_hp3_interconnect: entity work.system_axi_hp3_interconnect_0
     port map (
      ACLK => sys_cpu_clk,
      ARESETN => sys_cpu_resetn(0),
      M00_ACLK => sys_cpu_clk,
      M00_ARESETN => sys_cpu_resetn(0),
      M00_AXI_araddr(31 downto 0) => axi_hp3_interconnect_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_hp3_interconnect_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_hp3_interconnect_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_hp3_interconnect_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_hp3_interconnect_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_hp3_interconnect_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_hp3_interconnect_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_hp3_interconnect_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_hp3_interconnect_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_hp3_interconnect_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_hp3_interconnect_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_hp3_interconnect_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_hp3_interconnect_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_hp3_interconnect_M00_AXI_AWVALID,
      M00_AXI_bready => axi_hp3_interconnect_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_hp3_interconnect_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_hp3_interconnect_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_hp3_interconnect_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_hp3_interconnect_M00_AXI_RLAST,
      M00_AXI_rready => axi_hp3_interconnect_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_hp3_interconnect_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_hp3_interconnect_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_hp3_interconnect_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_hp3_interconnect_M00_AXI_WLAST,
      M00_AXI_wready => axi_hp3_interconnect_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_hp3_interconnect_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_hp3_interconnect_M00_AXI_WVALID,
      S00_ACLK => sys_cpu_clk,
      S00_ARESETN => sys_cpu_resetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_3_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_3_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_3_ARREADY,
      S00_AXI_arvalid => S00_AXI_3_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_3_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_3_AWPROT(2 downto 0),
      S00_AXI_awready => S00_AXI_3_AWREADY,
      S00_AXI_awvalid => S00_AXI_3_AWVALID,
      S00_AXI_bready => S00_AXI_3_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_3_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_3_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_3_RDATA(31 downto 0),
      S00_AXI_rready => S00_AXI_3_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_3_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_3_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_3_WDATA(31 downto 0),
      S00_AXI_wready => S00_AXI_3_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_3_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_3_WVALID
    );
clk_wiz_0: component system_clk_wiz_0_0
     port map (
      clk_in1_n => CLK_IN1_D_0_1_CLK_N,
      clk_in1_p => CLK_IN1_D_0_1_CLK_P,
      clk_out1 => clk_wiz_0_clk_out1
    );
edgeDetector_0: component system_edgeDetector_0_0
     port map (
      clk_i => clk_wiz_0_clk_out1,
      fedge_o => NLW_edgeDetector_0_fedge_o_UNCONNECTED,
      nrst_i => xlconstant_1_dout(0),
      redge_o => edgeDetector_0_redge_o,
      ref_i => tdc_0_wr_en_o
    );
sys_concat_intc: component system_sys_concat_intc_0
     port map (
      In0(0) => GND_1_dout(0),
      In1(0) => GND_1_dout(0),
      In10(0) => axi_ad9144_jesd_irq,
      In11(0) => axi_ad9680_jesd_irq,
      In12(0) => axi_ad9144_dma_irq,
      In13(0) => '0',
      In14(0) => '0',
      In15(0) => '0',
      In2(0) => GND_1_dout(0),
      In3(0) => GND_1_dout(0),
      In4(0) => GND_1_dout(0),
      In5(0) => GND_1_dout(0),
      In6(0) => GND_1_dout(0),
      In7(0) => GND_1_dout(0),
      In8(0) => GND_1_dout(0),
      In9(0) => GND_1_dout(0),
      dout(15 downto 0) => sys_concat_intc_dout(15 downto 0)
    );
sys_ps7: component system_sys_ps7_0
     port map (
      DDR_Addr(14 downto 0) => ddr_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => ddr_ba(2 downto 0),
      DDR_CAS_n => ddr_cas_n,
      DDR_CKE => ddr_cke,
      DDR_CS_n => ddr_cs_n,
      DDR_Clk => ddr_ck_p,
      DDR_Clk_n => ddr_ck_n,
      DDR_DM(3 downto 0) => ddr_dm(3 downto 0),
      DDR_DQ(31 downto 0) => ddr_dq(31 downto 0),
      DDR_DQS(3 downto 0) => ddr_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => ddr_dqs_n(3 downto 0),
      DDR_DRSTB => ddr_reset_n,
      DDR_ODT => ddr_odt,
      DDR_RAS_n => ddr_ras_n,
      DDR_VRN => fixed_io_ddr_vrn,
      DDR_VRP => fixed_io_ddr_vrp,
      DDR_WEB => ddr_we_n,
      FCLK_CLK0 => sys_cpu_clk,
      FCLK_RESET0_N => sys_ps7_FCLK_RESET0_N,
      GPIO_I(63 downto 0) => gpio_i_1(63 downto 0),
      GPIO_O(63 downto 0) => sys_ps7_GPIO_O(63 downto 0),
      GPIO_T(63 downto 0) => sys_ps7_GPIO_T(63 downto 0),
      IRQ_F2P(15 downto 0) => sys_concat_intc_dout(15 downto 0),
      MIO(53 downto 0) => fixed_io_mio(53 downto 0),
      M_AXI_GP0_ACLK => sys_cpu_clk,
      M_AXI_GP0_ARADDR(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => S00_AXI_1_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => S00_AXI_1_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => S00_AXI_1_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => S00_AXI_1_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      M_AXI_GP0_BREADY => S00_AXI_1_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => S00_AXI_1_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      M_AXI_GP0_RLAST => S00_AXI_1_RLAST,
      M_AXI_GP0_RREADY => S00_AXI_1_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => S00_AXI_1_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      M_AXI_GP0_WLAST => S00_AXI_1_WLAST,
      M_AXI_GP0_WREADY => S00_AXI_1_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => S00_AXI_1_WVALID,
      PS_CLK => fixed_io_ps_clk,
      PS_PORB => fixed_io_ps_porb,
      PS_SRSTB => fixed_io_ps_srstb,
      SPI0_MISO_I => spi0_sdi_i_1,
      SPI0_MISO_O => NLW_sys_ps7_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_sys_ps7_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => spi0_sdo_i_1,
      SPI0_MOSI_O => sys_ps7_SPI0_MOSI_O,
      SPI0_MOSI_T => NLW_sys_ps7_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => spi0_clk_i_1,
      SPI0_SCLK_O => sys_ps7_SPI0_SCLK_O,
      SPI0_SCLK_T => NLW_sys_ps7_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => sys_ps7_SPI0_SS1_O,
      SPI0_SS2_O => sys_ps7_SPI0_SS2_O,
      SPI0_SS_I => spi0_csn_i_1,
      SPI0_SS_O => sys_ps7_SPI0_SS_O,
      SPI0_SS_T => NLW_sys_ps7_SPI0_SS_T_UNCONNECTED,
      SPI1_MISO_I => spi1_sdi_i_1,
      SPI1_MISO_O => NLW_sys_ps7_SPI1_MISO_O_UNCONNECTED,
      SPI1_MISO_T => NLW_sys_ps7_SPI1_MISO_T_UNCONNECTED,
      SPI1_MOSI_I => spi1_sdo_i_1,
      SPI1_MOSI_O => sys_ps7_SPI1_MOSI_O,
      SPI1_MOSI_T => NLW_sys_ps7_SPI1_MOSI_T_UNCONNECTED,
      SPI1_SCLK_I => spi1_clk_i_1,
      SPI1_SCLK_O => sys_ps7_SPI1_SCLK_O,
      SPI1_SCLK_T => NLW_sys_ps7_SPI1_SCLK_T_UNCONNECTED,
      SPI1_SS1_O => sys_ps7_SPI1_SS1_O,
      SPI1_SS2_O => sys_ps7_SPI1_SS2_O,
      SPI1_SS_I => spi1_csn_i_1,
      SPI1_SS_O => sys_ps7_SPI1_SS_O,
      SPI1_SS_T => NLW_sys_ps7_SPI1_SS_T_UNCONNECTED,
      S_AXI_HP1_ACLK => sys_cpu_clk,
      S_AXI_HP1_ARADDR(31 downto 30) => B"00",
      S_AXI_HP1_ARADDR(29 downto 0) => axi_hp1_interconnect_M00_AXI_ARADDR(29 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => axi_hp1_interconnect_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 0) => B"000000",
      S_AXI_HP1_ARLEN(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => axi_hp1_interconnect_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => axi_hp1_interconnect_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => axi_hp1_interconnect_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => axi_hp1_interconnect_M00_AXI_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => axi_hp1_interconnect_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => axi_hp1_interconnect_M00_AXI_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP1_AWBURST(1 downto 0) => B"01",
      S_AXI_HP1_AWCACHE(3 downto 0) => B"0011",
      S_AXI_HP1_AWID(5 downto 0) => B"000000",
      S_AXI_HP1_AWLEN(3 downto 0) => B"0000",
      S_AXI_HP1_AWLOCK(1 downto 0) => B"00",
      S_AXI_HP1_AWPROT(2 downto 0) => B"000",
      S_AXI_HP1_AWQOS(3 downto 0) => B"0000",
      S_AXI_HP1_AWREADY => NLW_sys_ps7_S_AXI_HP1_AWREADY_UNCONNECTED,
      S_AXI_HP1_AWSIZE(2 downto 0) => B"011",
      S_AXI_HP1_AWVALID => '0',
      S_AXI_HP1_BID(5 downto 0) => NLW_sys_ps7_S_AXI_HP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_BREADY => '0',
      S_AXI_HP1_BRESP(1 downto 0) => NLW_sys_ps7_S_AXI_HP1_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP1_BVALID => NLW_sys_ps7_S_AXI_HP1_BVALID_UNCONNECTED,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_sys_ps7_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_sys_ps7_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => axi_hp1_interconnect_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => NLW_sys_ps7_S_AXI_HP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_RLAST => axi_hp1_interconnect_M00_AXI_RLAST,
      S_AXI_HP1_RREADY => axi_hp1_interconnect_M00_AXI_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => axi_hp1_interconnect_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => axi_hp1_interconnect_M00_AXI_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_sys_ps7_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_sys_ps7_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      S_AXI_HP1_WID(5 downto 0) => B"000000",
      S_AXI_HP1_WLAST => '0',
      S_AXI_HP1_WREADY => NLW_sys_ps7_S_AXI_HP1_WREADY_UNCONNECTED,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(7 downto 0) => B"11111111",
      S_AXI_HP1_WVALID => '0',
      S_AXI_HP3_ACLK => sys_cpu_clk,
      S_AXI_HP3_ARADDR(31 downto 0) => axi_hp3_interconnect_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP3_ARBURST(1 downto 0) => axi_hp3_interconnect_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP3_ARCACHE(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP3_ARID(5 downto 0) => B"000000",
      S_AXI_HP3_ARLEN(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP3_ARLOCK(1 downto 0) => axi_hp3_interconnect_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP3_ARPROT(2 downto 0) => axi_hp3_interconnect_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP3_ARQOS(3 downto 0) => axi_hp3_interconnect_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP3_ARREADY => axi_hp3_interconnect_M00_AXI_ARREADY,
      S_AXI_HP3_ARSIZE(2 downto 0) => axi_hp3_interconnect_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP3_ARVALID => axi_hp3_interconnect_M00_AXI_ARVALID,
      S_AXI_HP3_AWADDR(31 downto 0) => axi_hp3_interconnect_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP3_AWBURST(1 downto 0) => axi_hp3_interconnect_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP3_AWCACHE(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP3_AWID(5 downto 0) => B"000000",
      S_AXI_HP3_AWLEN(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP3_AWLOCK(1 downto 0) => axi_hp3_interconnect_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP3_AWPROT(2 downto 0) => axi_hp3_interconnect_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP3_AWQOS(3 downto 0) => axi_hp3_interconnect_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP3_AWREADY => axi_hp3_interconnect_M00_AXI_AWREADY,
      S_AXI_HP3_AWSIZE(2 downto 0) => axi_hp3_interconnect_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP3_AWVALID => axi_hp3_interconnect_M00_AXI_AWVALID,
      S_AXI_HP3_BID(5 downto 0) => NLW_sys_ps7_S_AXI_HP3_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_BREADY => axi_hp3_interconnect_M00_AXI_BREADY,
      S_AXI_HP3_BRESP(1 downto 0) => axi_hp3_interconnect_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP3_BVALID => axi_hp3_interconnect_M00_AXI_BVALID,
      S_AXI_HP3_RACOUNT(2 downto 0) => NLW_sys_ps7_S_AXI_HP3_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP3_RCOUNT(7 downto 0) => NLW_sys_ps7_S_AXI_HP3_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP3_RDATA(63 downto 0) => axi_hp3_interconnect_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP3_RDISSUECAP1_EN => '0',
      S_AXI_HP3_RID(5 downto 0) => NLW_sys_ps7_S_AXI_HP3_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_RLAST => axi_hp3_interconnect_M00_AXI_RLAST,
      S_AXI_HP3_RREADY => axi_hp3_interconnect_M00_AXI_RREADY,
      S_AXI_HP3_RRESP(1 downto 0) => axi_hp3_interconnect_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP3_RVALID => axi_hp3_interconnect_M00_AXI_RVALID,
      S_AXI_HP3_WACOUNT(5 downto 0) => NLW_sys_ps7_S_AXI_HP3_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP3_WCOUNT(7 downto 0) => NLW_sys_ps7_S_AXI_HP3_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP3_WDATA(63 downto 0) => axi_hp3_interconnect_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP3_WID(5 downto 0) => B"000000",
      S_AXI_HP3_WLAST => axi_hp3_interconnect_M00_AXI_WLAST,
      S_AXI_HP3_WREADY => axi_hp3_interconnect_M00_AXI_WREADY,
      S_AXI_HP3_WRISSUECAP1_EN => '0',
      S_AXI_HP3_WSTRB(7 downto 0) => axi_hp3_interconnect_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP3_WVALID => axi_hp3_interconnect_M00_AXI_WVALID
    );
sys_rstgen: component system_sys_rstgen_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_sys_rstgen_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => sys_ps7_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_sys_rstgen_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_sys_rstgen_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => sys_cpu_resetn(0),
      peripheral_reset(0) => sys_cpu_reset(0),
      slowest_sync_clk => sys_cpu_clk
    );
tdc_0: component system_tdc_0_0
     port map (
      clk_i => clk_wiz_0_clk_out1,
      en_tdc_i => xlconstant_1_dout(0),
      measurement_o(20 downto 0) => tdc_0_measurement_o(20 downto 0),
      nrst_i => xlconstant_1_dout(0),
      start_i => Start_1CLK_STOP_0_start_o,
      stop_i => Start_1CLK_STOP_0_stop_o,
      wr_en_o => tdc_0_wr_en_o
    );
util_daq2_xcvr: component system_util_daq2_xcvr_0
     port map (
      cpll_ref_clk_0 => rx_ref_clk_0_1,
      cpll_ref_clk_1 => rx_ref_clk_0_1,
      cpll_ref_clk_2 => rx_ref_clk_0_1,
      cpll_ref_clk_3 => rx_ref_clk_0_1,
      qpll_ref_clk_0 => tx_ref_clk_0_1,
      rx_0_n => rx_data_0_n_1,
      rx_0_p => rx_data_0_p_1,
      rx_1_n => rx_data_1_n_1,
      rx_1_p => rx_data_1_p_1,
      rx_2_n => rx_data_2_n_1,
      rx_2_p => rx_data_2_p_1,
      rx_3_n => rx_data_3_n_1,
      rx_3_p => rx_data_3_p_1,
      rx_calign_0 => axi_ad9680_jesd_phy_en_char_align,
      rx_calign_1 => axi_ad9680_jesd_phy_en_char_align,
      rx_calign_2 => axi_ad9680_jesd_phy_en_char_align,
      rx_calign_3 => axi_ad9680_jesd_phy_en_char_align,
      rx_charisk_0(3 downto 0) => util_daq2_xcvr_rx_0_rxcharisk(3 downto 0),
      rx_charisk_1(3 downto 0) => util_daq2_xcvr_rx_1_rxcharisk(3 downto 0),
      rx_charisk_2(3 downto 0) => util_daq2_xcvr_rx_2_rxcharisk(3 downto 0),
      rx_charisk_3(3 downto 0) => util_daq2_xcvr_rx_3_rxcharisk(3 downto 0),
      rx_clk_0 => util_daq2_xcvr_rx_out_clk_0,
      rx_clk_1 => util_daq2_xcvr_rx_out_clk_0,
      rx_clk_2 => util_daq2_xcvr_rx_out_clk_0,
      rx_clk_3 => util_daq2_xcvr_rx_out_clk_0,
      rx_data_0(31 downto 0) => util_daq2_xcvr_rx_0_rxdata(31 downto 0),
      rx_data_1(31 downto 0) => util_daq2_xcvr_rx_1_rxdata(31 downto 0),
      rx_data_2(31 downto 0) => util_daq2_xcvr_rx_2_rxdata(31 downto 0),
      rx_data_3(31 downto 0) => util_daq2_xcvr_rx_3_rxdata(31 downto 0),
      rx_disperr_0(3 downto 0) => util_daq2_xcvr_rx_0_rxdisperr(3 downto 0),
      rx_disperr_1(3 downto 0) => util_daq2_xcvr_rx_1_rxdisperr(3 downto 0),
      rx_disperr_2(3 downto 0) => util_daq2_xcvr_rx_2_rxdisperr(3 downto 0),
      rx_disperr_3(3 downto 0) => util_daq2_xcvr_rx_3_rxdisperr(3 downto 0),
      rx_notintable_0(3 downto 0) => util_daq2_xcvr_rx_0_rxnotintable(3 downto 0),
      rx_notintable_1(3 downto 0) => util_daq2_xcvr_rx_1_rxnotintable(3 downto 0),
      rx_notintable_2(3 downto 0) => util_daq2_xcvr_rx_2_rxnotintable(3 downto 0),
      rx_notintable_3(3 downto 0) => util_daq2_xcvr_rx_3_rxnotintable(3 downto 0),
      rx_out_clk_0 => util_daq2_xcvr_rx_out_clk_0,
      rx_out_clk_1 => NLW_util_daq2_xcvr_rx_out_clk_1_UNCONNECTED,
      rx_out_clk_2 => NLW_util_daq2_xcvr_rx_out_clk_2_UNCONNECTED,
      rx_out_clk_3 => NLW_util_daq2_xcvr_rx_out_clk_3_UNCONNECTED,
      tx_0_n => util_daq2_xcvr_tx_0_n,
      tx_0_p => util_daq2_xcvr_tx_0_p,
      tx_1_n => util_daq2_xcvr_tx_1_n,
      tx_1_p => util_daq2_xcvr_tx_1_p,
      tx_2_n => util_daq2_xcvr_tx_2_n,
      tx_2_p => util_daq2_xcvr_tx_2_p,
      tx_3_n => util_daq2_xcvr_tx_3_n,
      tx_3_p => util_daq2_xcvr_tx_3_p,
      tx_charisk_0(3 downto 0) => axi_ad9144_jesd_tx_phy0_txcharisk(3 downto 0),
      tx_charisk_1(3 downto 0) => axi_ad9144_jesd_tx_phy3_txcharisk(3 downto 0),
      tx_charisk_2(3 downto 0) => axi_ad9144_jesd_tx_phy1_txcharisk(3 downto 0),
      tx_charisk_3(3 downto 0) => axi_ad9144_jesd_tx_phy2_txcharisk(3 downto 0),
      tx_clk_0 => util_daq2_xcvr_tx_out_clk_0,
      tx_clk_1 => util_daq2_xcvr_tx_out_clk_0,
      tx_clk_2 => util_daq2_xcvr_tx_out_clk_0,
      tx_clk_3 => util_daq2_xcvr_tx_out_clk_0,
      tx_data_0(31 downto 0) => axi_ad9144_jesd_tx_phy0_txdata(31 downto 0),
      tx_data_1(31 downto 0) => axi_ad9144_jesd_tx_phy3_txdata(31 downto 0),
      tx_data_2(31 downto 0) => axi_ad9144_jesd_tx_phy1_txdata(31 downto 0),
      tx_data_3(31 downto 0) => axi_ad9144_jesd_tx_phy2_txdata(31 downto 0),
      tx_out_clk_0 => util_daq2_xcvr_tx_out_clk_0,
      tx_out_clk_1 => NLW_util_daq2_xcvr_tx_out_clk_1_UNCONNECTED,
      tx_out_clk_2 => NLW_util_daq2_xcvr_tx_out_clk_2_UNCONNECTED,
      tx_out_clk_3 => NLW_util_daq2_xcvr_tx_out_clk_3_UNCONNECTED,
      up_clk => sys_cpu_clk,
      up_cm_addr_0(11 downto 0) => axi_ad9144_xcvr_up_cm_0_addr(11 downto 0),
      up_cm_enb_0 => axi_ad9144_xcvr_up_cm_0_enb,
      up_cm_rdata_0(15 downto 0) => axi_ad9144_xcvr_up_cm_0_rdata(15 downto 0),
      up_cm_ready_0 => axi_ad9144_xcvr_up_cm_0_ready,
      up_cm_wdata_0(15 downto 0) => axi_ad9144_xcvr_up_cm_0_wdata(15 downto 0),
      up_cm_wr_0 => axi_ad9144_xcvr_up_cm_0_wr,
      up_cpll_rst_0 => axi_ad9680_xcvr_up_pll_rst,
      up_cpll_rst_1 => axi_ad9680_xcvr_up_pll_rst,
      up_cpll_rst_2 => axi_ad9680_xcvr_up_pll_rst,
      up_cpll_rst_3 => axi_ad9680_xcvr_up_pll_rst,
      up_es_addr_0(11 downto 0) => axi_ad9680_xcvr_up_es_0_addr(11 downto 0),
      up_es_addr_1(11 downto 0) => axi_ad9680_xcvr_up_es_1_addr(11 downto 0),
      up_es_addr_2(11 downto 0) => axi_ad9680_xcvr_up_es_2_addr(11 downto 0),
      up_es_addr_3(11 downto 0) => axi_ad9680_xcvr_up_es_3_addr(11 downto 0),
      up_es_enb_0 => axi_ad9680_xcvr_up_es_0_enb,
      up_es_enb_1 => axi_ad9680_xcvr_up_es_1_enb,
      up_es_enb_2 => axi_ad9680_xcvr_up_es_2_enb,
      up_es_enb_3 => axi_ad9680_xcvr_up_es_3_enb,
      up_es_rdata_0(15 downto 0) => axi_ad9680_xcvr_up_es_0_rdata(15 downto 0),
      up_es_rdata_1(15 downto 0) => axi_ad9680_xcvr_up_es_1_rdata(15 downto 0),
      up_es_rdata_2(15 downto 0) => axi_ad9680_xcvr_up_es_2_rdata(15 downto 0),
      up_es_rdata_3(15 downto 0) => axi_ad9680_xcvr_up_es_3_rdata(15 downto 0),
      up_es_ready_0 => axi_ad9680_xcvr_up_es_0_ready,
      up_es_ready_1 => axi_ad9680_xcvr_up_es_1_ready,
      up_es_ready_2 => axi_ad9680_xcvr_up_es_2_ready,
      up_es_ready_3 => axi_ad9680_xcvr_up_es_3_ready,
      up_es_reset_0 => axi_ad9680_xcvr_up_es_0_reset,
      up_es_reset_1 => axi_ad9680_xcvr_up_es_1_reset,
      up_es_reset_2 => axi_ad9680_xcvr_up_es_2_reset,
      up_es_reset_3 => axi_ad9680_xcvr_up_es_3_reset,
      up_es_wdata_0(15 downto 0) => axi_ad9680_xcvr_up_es_0_wdata(15 downto 0),
      up_es_wdata_1(15 downto 0) => axi_ad9680_xcvr_up_es_1_wdata(15 downto 0),
      up_es_wdata_2(15 downto 0) => axi_ad9680_xcvr_up_es_2_wdata(15 downto 0),
      up_es_wdata_3(15 downto 0) => axi_ad9680_xcvr_up_es_3_wdata(15 downto 0),
      up_es_wr_0 => axi_ad9680_xcvr_up_es_0_wr,
      up_es_wr_1 => axi_ad9680_xcvr_up_es_1_wr,
      up_es_wr_2 => axi_ad9680_xcvr_up_es_2_wr,
      up_es_wr_3 => axi_ad9680_xcvr_up_es_3_wr,
      up_qpll_rst_0 => axi_ad9144_xcvr_up_pll_rst,
      up_rstn => sys_cpu_resetn(0),
      up_rx_addr_0(11 downto 0) => axi_ad9680_xcvr_up_ch_0_addr(11 downto 0),
      up_rx_addr_1(11 downto 0) => axi_ad9680_xcvr_up_ch_1_addr(11 downto 0),
      up_rx_addr_2(11 downto 0) => axi_ad9680_xcvr_up_ch_2_addr(11 downto 0),
      up_rx_addr_3(11 downto 0) => axi_ad9680_xcvr_up_ch_3_addr(11 downto 0),
      up_rx_enb_0 => axi_ad9680_xcvr_up_ch_0_enb,
      up_rx_enb_1 => axi_ad9680_xcvr_up_ch_1_enb,
      up_rx_enb_2 => axi_ad9680_xcvr_up_ch_2_enb,
      up_rx_enb_3 => axi_ad9680_xcvr_up_ch_3_enb,
      up_rx_lpm_dfe_n_0 => axi_ad9680_xcvr_up_ch_0_lpm_dfe_n,
      up_rx_lpm_dfe_n_1 => axi_ad9680_xcvr_up_ch_1_lpm_dfe_n,
      up_rx_lpm_dfe_n_2 => axi_ad9680_xcvr_up_ch_2_lpm_dfe_n,
      up_rx_lpm_dfe_n_3 => axi_ad9680_xcvr_up_ch_3_lpm_dfe_n,
      up_rx_out_clk_sel_0(2 downto 0) => axi_ad9680_xcvr_up_ch_0_out_clk_sel(2 downto 0),
      up_rx_out_clk_sel_1(2 downto 0) => axi_ad9680_xcvr_up_ch_1_out_clk_sel(2 downto 0),
      up_rx_out_clk_sel_2(2 downto 0) => axi_ad9680_xcvr_up_ch_2_out_clk_sel(2 downto 0),
      up_rx_out_clk_sel_3(2 downto 0) => axi_ad9680_xcvr_up_ch_3_out_clk_sel(2 downto 0),
      up_rx_pll_locked_0 => axi_ad9680_xcvr_up_ch_0_pll_locked,
      up_rx_pll_locked_1 => axi_ad9680_xcvr_up_ch_1_pll_locked,
      up_rx_pll_locked_2 => axi_ad9680_xcvr_up_ch_2_pll_locked,
      up_rx_pll_locked_3 => axi_ad9680_xcvr_up_ch_3_pll_locked,
      up_rx_rate_0(2 downto 0) => axi_ad9680_xcvr_up_ch_0_rate(2 downto 0),
      up_rx_rate_1(2 downto 0) => axi_ad9680_xcvr_up_ch_1_rate(2 downto 0),
      up_rx_rate_2(2 downto 0) => axi_ad9680_xcvr_up_ch_2_rate(2 downto 0),
      up_rx_rate_3(2 downto 0) => axi_ad9680_xcvr_up_ch_3_rate(2 downto 0),
      up_rx_rdata_0(15 downto 0) => axi_ad9680_xcvr_up_ch_0_rdata(15 downto 0),
      up_rx_rdata_1(15 downto 0) => axi_ad9680_xcvr_up_ch_1_rdata(15 downto 0),
      up_rx_rdata_2(15 downto 0) => axi_ad9680_xcvr_up_ch_2_rdata(15 downto 0),
      up_rx_rdata_3(15 downto 0) => axi_ad9680_xcvr_up_ch_3_rdata(15 downto 0),
      up_rx_ready_0 => axi_ad9680_xcvr_up_ch_0_ready,
      up_rx_ready_1 => axi_ad9680_xcvr_up_ch_1_ready,
      up_rx_ready_2 => axi_ad9680_xcvr_up_ch_2_ready,
      up_rx_ready_3 => axi_ad9680_xcvr_up_ch_3_ready,
      up_rx_rst_0 => axi_ad9680_xcvr_up_ch_0_rst,
      up_rx_rst_1 => axi_ad9680_xcvr_up_ch_1_rst,
      up_rx_rst_2 => axi_ad9680_xcvr_up_ch_2_rst,
      up_rx_rst_3 => axi_ad9680_xcvr_up_ch_3_rst,
      up_rx_rst_done_0 => axi_ad9680_xcvr_up_ch_0_rst_done,
      up_rx_rst_done_1 => axi_ad9680_xcvr_up_ch_1_rst_done,
      up_rx_rst_done_2 => axi_ad9680_xcvr_up_ch_2_rst_done,
      up_rx_rst_done_3 => axi_ad9680_xcvr_up_ch_3_rst_done,
      up_rx_sys_clk_sel_0(1 downto 0) => axi_ad9680_xcvr_up_ch_0_sys_clk_sel(1 downto 0),
      up_rx_sys_clk_sel_1(1 downto 0) => axi_ad9680_xcvr_up_ch_1_sys_clk_sel(1 downto 0),
      up_rx_sys_clk_sel_2(1 downto 0) => axi_ad9680_xcvr_up_ch_2_sys_clk_sel(1 downto 0),
      up_rx_sys_clk_sel_3(1 downto 0) => axi_ad9680_xcvr_up_ch_3_sys_clk_sel(1 downto 0),
      up_rx_user_ready_0 => axi_ad9680_xcvr_up_ch_0_user_ready,
      up_rx_user_ready_1 => axi_ad9680_xcvr_up_ch_1_user_ready,
      up_rx_user_ready_2 => axi_ad9680_xcvr_up_ch_2_user_ready,
      up_rx_user_ready_3 => axi_ad9680_xcvr_up_ch_3_user_ready,
      up_rx_wdata_0(15 downto 0) => axi_ad9680_xcvr_up_ch_0_wdata(15 downto 0),
      up_rx_wdata_1(15 downto 0) => axi_ad9680_xcvr_up_ch_1_wdata(15 downto 0),
      up_rx_wdata_2(15 downto 0) => axi_ad9680_xcvr_up_ch_2_wdata(15 downto 0),
      up_rx_wdata_3(15 downto 0) => axi_ad9680_xcvr_up_ch_3_wdata(15 downto 0),
      up_rx_wr_0 => axi_ad9680_xcvr_up_ch_0_wr,
      up_rx_wr_1 => axi_ad9680_xcvr_up_ch_1_wr,
      up_rx_wr_2 => axi_ad9680_xcvr_up_ch_2_wr,
      up_rx_wr_3 => axi_ad9680_xcvr_up_ch_3_wr,
      up_tx_addr_0(11 downto 0) => axi_ad9144_xcvr_up_ch_0_addr(11 downto 0),
      up_tx_addr_1(11 downto 0) => axi_ad9144_xcvr_up_ch_1_addr(11 downto 0),
      up_tx_addr_2(11 downto 0) => axi_ad9144_xcvr_up_ch_2_addr(11 downto 0),
      up_tx_addr_3(11 downto 0) => axi_ad9144_xcvr_up_ch_3_addr(11 downto 0),
      up_tx_diffctrl_0(3 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_diffctrl(3 downto 0),
      up_tx_diffctrl_1(3 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_diffctrl(3 downto 0),
      up_tx_diffctrl_2(3 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_diffctrl(3 downto 0),
      up_tx_diffctrl_3(3 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_diffctrl(3 downto 0),
      up_tx_enb_0 => axi_ad9144_xcvr_up_ch_0_enb,
      up_tx_enb_1 => axi_ad9144_xcvr_up_ch_1_enb,
      up_tx_enb_2 => axi_ad9144_xcvr_up_ch_2_enb,
      up_tx_enb_3 => axi_ad9144_xcvr_up_ch_3_enb,
      up_tx_lpm_dfe_n_0 => axi_ad9144_xcvr_up_ch_0_lpm_dfe_n,
      up_tx_lpm_dfe_n_1 => axi_ad9144_xcvr_up_ch_1_lpm_dfe_n,
      up_tx_lpm_dfe_n_2 => axi_ad9144_xcvr_up_ch_2_lpm_dfe_n,
      up_tx_lpm_dfe_n_3 => axi_ad9144_xcvr_up_ch_3_lpm_dfe_n,
      up_tx_out_clk_sel_0(2 downto 0) => axi_ad9144_xcvr_up_ch_0_out_clk_sel(2 downto 0),
      up_tx_out_clk_sel_1(2 downto 0) => axi_ad9144_xcvr_up_ch_1_out_clk_sel(2 downto 0),
      up_tx_out_clk_sel_2(2 downto 0) => axi_ad9144_xcvr_up_ch_2_out_clk_sel(2 downto 0),
      up_tx_out_clk_sel_3(2 downto 0) => axi_ad9144_xcvr_up_ch_3_out_clk_sel(2 downto 0),
      up_tx_pll_locked_0 => axi_ad9144_xcvr_up_ch_0_pll_locked,
      up_tx_pll_locked_1 => axi_ad9144_xcvr_up_ch_1_pll_locked,
      up_tx_pll_locked_2 => axi_ad9144_xcvr_up_ch_2_pll_locked,
      up_tx_pll_locked_3 => axi_ad9144_xcvr_up_ch_3_pll_locked,
      up_tx_postcursor_0(4 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_postcursor(4 downto 0),
      up_tx_postcursor_1(4 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_postcursor(4 downto 0),
      up_tx_postcursor_2(4 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_postcursor(4 downto 0),
      up_tx_postcursor_3(4 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_postcursor(4 downto 0),
      up_tx_precursor_0(4 downto 0) => axi_ad9144_xcvr_up_ch_0_tx_precursor(4 downto 0),
      up_tx_precursor_1(4 downto 0) => axi_ad9144_xcvr_up_ch_1_tx_precursor(4 downto 0),
      up_tx_precursor_2(4 downto 0) => axi_ad9144_xcvr_up_ch_2_tx_precursor(4 downto 0),
      up_tx_precursor_3(4 downto 0) => axi_ad9144_xcvr_up_ch_3_tx_precursor(4 downto 0),
      up_tx_rate_0(2 downto 0) => axi_ad9144_xcvr_up_ch_0_rate(2 downto 0),
      up_tx_rate_1(2 downto 0) => axi_ad9144_xcvr_up_ch_1_rate(2 downto 0),
      up_tx_rate_2(2 downto 0) => axi_ad9144_xcvr_up_ch_2_rate(2 downto 0),
      up_tx_rate_3(2 downto 0) => axi_ad9144_xcvr_up_ch_3_rate(2 downto 0),
      up_tx_rdata_0(15 downto 0) => axi_ad9144_xcvr_up_ch_0_rdata(15 downto 0),
      up_tx_rdata_1(15 downto 0) => axi_ad9144_xcvr_up_ch_1_rdata(15 downto 0),
      up_tx_rdata_2(15 downto 0) => axi_ad9144_xcvr_up_ch_2_rdata(15 downto 0),
      up_tx_rdata_3(15 downto 0) => axi_ad9144_xcvr_up_ch_3_rdata(15 downto 0),
      up_tx_ready_0 => axi_ad9144_xcvr_up_ch_0_ready,
      up_tx_ready_1 => axi_ad9144_xcvr_up_ch_1_ready,
      up_tx_ready_2 => axi_ad9144_xcvr_up_ch_2_ready,
      up_tx_ready_3 => axi_ad9144_xcvr_up_ch_3_ready,
      up_tx_rst_0 => axi_ad9144_xcvr_up_ch_0_rst,
      up_tx_rst_1 => axi_ad9144_xcvr_up_ch_1_rst,
      up_tx_rst_2 => axi_ad9144_xcvr_up_ch_2_rst,
      up_tx_rst_3 => axi_ad9144_xcvr_up_ch_3_rst,
      up_tx_rst_done_0 => axi_ad9144_xcvr_up_ch_0_rst_done,
      up_tx_rst_done_1 => axi_ad9144_xcvr_up_ch_1_rst_done,
      up_tx_rst_done_2 => axi_ad9144_xcvr_up_ch_2_rst_done,
      up_tx_rst_done_3 => axi_ad9144_xcvr_up_ch_3_rst_done,
      up_tx_sys_clk_sel_0(1 downto 0) => axi_ad9144_xcvr_up_ch_0_sys_clk_sel(1 downto 0),
      up_tx_sys_clk_sel_1(1 downto 0) => axi_ad9144_xcvr_up_ch_1_sys_clk_sel(1 downto 0),
      up_tx_sys_clk_sel_2(1 downto 0) => axi_ad9144_xcvr_up_ch_2_sys_clk_sel(1 downto 0),
      up_tx_sys_clk_sel_3(1 downto 0) => axi_ad9144_xcvr_up_ch_3_sys_clk_sel(1 downto 0),
      up_tx_user_ready_0 => axi_ad9144_xcvr_up_ch_0_user_ready,
      up_tx_user_ready_1 => axi_ad9144_xcvr_up_ch_1_user_ready,
      up_tx_user_ready_2 => axi_ad9144_xcvr_up_ch_2_user_ready,
      up_tx_user_ready_3 => axi_ad9144_xcvr_up_ch_3_user_ready,
      up_tx_wdata_0(15 downto 0) => axi_ad9144_xcvr_up_ch_0_wdata(15 downto 0),
      up_tx_wdata_1(15 downto 0) => axi_ad9144_xcvr_up_ch_1_wdata(15 downto 0),
      up_tx_wdata_2(15 downto 0) => axi_ad9144_xcvr_up_ch_2_wdata(15 downto 0),
      up_tx_wdata_3(15 downto 0) => axi_ad9144_xcvr_up_ch_3_wdata(15 downto 0),
      up_tx_wr_0 => axi_ad9144_xcvr_up_ch_0_wr,
      up_tx_wr_1 => axi_ad9144_xcvr_up_ch_1_wr,
      up_tx_wr_2 => axi_ad9144_xcvr_up_ch_2_wr,
      up_tx_wr_3 => axi_ad9144_xcvr_up_ch_3_wr
    );
xlconstant_0: component system_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
