--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Jun 14 01:59:31 2021
--Host        : DESKTOP-4JJ62M2 running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
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
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    spi0_csn_2_o : out STD_LOGIC;
    spi0_csn_1_o : out STD_LOGIC;
    spi0_csn_0_o : out STD_LOGIC;
    spi0_csn_i : in STD_LOGIC;
    spi0_clk_i : in STD_LOGIC;
    spi0_clk_o : out STD_LOGIC;
    spi0_sdo_i : in STD_LOGIC;
    spi0_sdo_o : out STD_LOGIC;
    spi0_sdi_i : in STD_LOGIC;
    spi1_csn_2_o : out STD_LOGIC;
    spi1_csn_1_o : out STD_LOGIC;
    spi1_csn_0_o : out STD_LOGIC;
    spi1_csn_i : in STD_LOGIC;
    spi1_clk_i : in STD_LOGIC;
    spi1_clk_o : out STD_LOGIC;
    spi1_sdo_i : in STD_LOGIC;
    spi1_sdo_o : out STD_LOGIC;
    spi1_sdi_i : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gpio_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gpio_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_ref_clk_0 : in STD_LOGIC;
    rx_ref_clk_0 : in STD_LOGIC;
    tx_sysref_0 : in STD_LOGIC;
    tx_sync_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_data_0_p : out STD_LOGIC;
    tx_data_0_n : out STD_LOGIC;
    tx_data_1_p : out STD_LOGIC;
    tx_data_1_n : out STD_LOGIC;
    tx_data_2_p : out STD_LOGIC;
    tx_data_2_n : out STD_LOGIC;
    tx_data_3_p : out STD_LOGIC;
    tx_data_3_n : out STD_LOGIC;
    rx_sysref_0 : in STD_LOGIC;
    rx_sync_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_data_0_p : in STD_LOGIC;
    rx_data_0_n : in STD_LOGIC;
    rx_data_1_p : in STD_LOGIC;
    rx_data_1_n : in STD_LOGIC;
    rx_data_2_p : in STD_LOGIC;
    rx_data_2_n : in STD_LOGIC;
    rx_data_3_p : in STD_LOGIC;
    rx_data_3_n : in STD_LOGIC;
    ddr_cas_n : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC;
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      ddr_addr(14 downto 0) => ddr_addr(14 downto 0),
      ddr_ba(2 downto 0) => ddr_ba(2 downto 0),
      ddr_cas_n => ddr_cas_n,
      ddr_ck_n => ddr_ck_n,
      ddr_ck_p => ddr_ck_p,
      ddr_cke => ddr_cke,
      ddr_cs_n => ddr_cs_n,
      ddr_dm(3 downto 0) => ddr_dm(3 downto 0),
      ddr_dq(31 downto 0) => ddr_dq(31 downto 0),
      ddr_dqs_n(3 downto 0) => ddr_dqs_n(3 downto 0),
      ddr_dqs_p(3 downto 0) => ddr_dqs_p(3 downto 0),
      ddr_odt => ddr_odt,
      ddr_ras_n => ddr_ras_n,
      ddr_reset_n => ddr_reset_n,
      ddr_we_n => ddr_we_n,
      fixed_io_ddr_vrn => fixed_io_ddr_vrn,
      fixed_io_ddr_vrp => fixed_io_ddr_vrp,
      fixed_io_mio(53 downto 0) => fixed_io_mio(53 downto 0),
      fixed_io_ps_clk => fixed_io_ps_clk,
      fixed_io_ps_porb => fixed_io_ps_porb,
      fixed_io_ps_srstb => fixed_io_ps_srstb,
      gpio_i(63 downto 0) => gpio_i(63 downto 0),
      gpio_o(63 downto 0) => gpio_o(63 downto 0),
      gpio_t(63 downto 0) => gpio_t(63 downto 0),
      rx_data_0_n => rx_data_0_n,
      rx_data_0_p => rx_data_0_p,
      rx_data_1_n => rx_data_1_n,
      rx_data_1_p => rx_data_1_p,
      rx_data_2_n => rx_data_2_n,
      rx_data_2_p => rx_data_2_p,
      rx_data_3_n => rx_data_3_n,
      rx_data_3_p => rx_data_3_p,
      rx_ref_clk_0 => rx_ref_clk_0,
      rx_sync_0(0) => rx_sync_0(0),
      rx_sysref_0 => rx_sysref_0,
      spi0_clk_i => spi0_clk_i,
      spi0_clk_o => spi0_clk_o,
      spi0_csn_0_o => spi0_csn_0_o,
      spi0_csn_1_o => spi0_csn_1_o,
      spi0_csn_2_o => spi0_csn_2_o,
      spi0_csn_i => spi0_csn_i,
      spi0_sdi_i => spi0_sdi_i,
      spi0_sdo_i => spi0_sdo_i,
      spi0_sdo_o => spi0_sdo_o,
      spi1_clk_i => spi1_clk_i,
      spi1_clk_o => spi1_clk_o,
      spi1_csn_0_o => spi1_csn_0_o,
      spi1_csn_1_o => spi1_csn_1_o,
      spi1_csn_2_o => spi1_csn_2_o,
      spi1_csn_i => spi1_csn_i,
      spi1_sdi_i => spi1_sdi_i,
      spi1_sdo_i => spi1_sdo_i,
      spi1_sdo_o => spi1_sdo_o,
      tx_data_0_n => tx_data_0_n,
      tx_data_0_p => tx_data_0_p,
      tx_data_1_n => tx_data_1_n,
      tx_data_1_p => tx_data_1_p,
      tx_data_2_n => tx_data_2_n,
      tx_data_2_p => tx_data_2_p,
      tx_data_3_n => tx_data_3_n,
      tx_data_3_p => tx_data_3_p,
      tx_ref_clk_0 => tx_ref_clk_0,
      tx_sync_0(0) => tx_sync_0(0),
      tx_sysref_0 => tx_sysref_0
    );
end STRUCTURE;
