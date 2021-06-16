
# daq2

set_property -dict {PACKAGE_PIN AA8} [get_ports rx_ref_clk_p]
set_property -dict {PACKAGE_PIN AA7} [get_ports rx_ref_clk_n]
set_property -dict {PACKAGE_PIN AE8} [get_ports {rx_data_p[0]}]
set_property -dict {PACKAGE_PIN AE7} [get_ports {rx_data_n[0]}]
set_property -dict {PACKAGE_PIN AH10} [get_ports {rx_data_p[1]}]
set_property -dict {PACKAGE_PIN AH9} [get_ports {rx_data_n[1]}]
set_property -dict {PACKAGE_PIN AG8} [get_ports {rx_data_p[2]}]
set_property -dict {PACKAGE_PIN AG7} [get_ports {rx_data_n[2]}]
set_property -dict {PACKAGE_PIN AJ8} [get_ports {rx_data_p[3]}]
set_property -dict {PACKAGE_PIN AJ7} [get_ports {rx_data_n[3]}]
set_property -dict {PACKAGE_PIN AG21 IOSTANDARD LVDS_25} [get_ports rx_sync_p]
set_property -dict {PACKAGE_PIN AH21 IOSTANDARD LVDS_25} [get_ports rx_sync_n]
set_property -dict {PACKAGE_PIN AH19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_sysref_p]
set_property -dict {PACKAGE_PIN AJ19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_sysref_n]

set_property -dict {PACKAGE_PIN AD10} [get_ports tx_ref_clk_p]
set_property -dict {PACKAGE_PIN AD9} [get_ports tx_ref_clk_n]
set_property -dict {PACKAGE_PIN AK2} [get_ports {tx_data_p[0]}]
set_property -dict {PACKAGE_PIN AK1} [get_ports {tx_data_n[0]}]
set_property -dict {PACKAGE_PIN AK10} [get_ports {tx_data_p[1]}]
set_property -dict {PACKAGE_PIN AK9} [get_ports {tx_data_n[1]}]
set_property -dict {PACKAGE_PIN AJ4} [get_ports {tx_data_p[2]}]
set_property -dict {PACKAGE_PIN AJ3} [get_ports {tx_data_n[2]}]
set_property -dict {PACKAGE_PIN AK6} [get_ports {tx_data_p[3]}]
set_property -dict {PACKAGE_PIN AK5} [get_ports {tx_data_n[3]}]
set_property -dict {PACKAGE_PIN AK17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports tx_sync_p]
set_property -dict {PACKAGE_PIN AK18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports tx_sync_n]
set_property -dict {PACKAGE_PIN AJ20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports tx_sysref_p]
set_property -dict {PACKAGE_PIN AK20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports tx_sysref_n]

set_property -dict {PACKAGE_PIN AH23 IOSTANDARD LVCMOS25} [get_ports spi_csn_clk]
set_property -dict {PACKAGE_PIN AG24 IOSTANDARD LVCMOS25} [get_ports spi_csn_dac]
set_property -dict {PACKAGE_PIN AE21 IOSTANDARD LVCMOS25} [get_ports spi_csn_adc]
set_property -dict {PACKAGE_PIN AH24 IOSTANDARD LVCMOS25} [get_ports spi_clk]
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVCMOS25} [get_ports spi_sdio]
set_property -dict {PACKAGE_PIN AG19 IOSTANDARD LVCMOS25} [get_ports spi_dir]

set_property -dict {PACKAGE_PIN AF19 IOSTANDARD LVCMOS25} [get_ports clkd_sync]
set_property -dict {PACKAGE_PIN AG25 IOSTANDARD LVCMOS25} [get_ports dac_reset]
set_property -dict {PACKAGE_PIN AF24 IOSTANDARD LVCMOS25} [get_ports dac_txen]
set_property -dict {PACKAGE_PIN AG22 IOSTANDARD LVCMOS25} [get_ports adc_pd]

set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS25} [get_ports {clkd_status[0]}]
set_property -dict {PACKAGE_PIN AA23 IOSTANDARD LVCMOS25} [get_ports {clkd_status[1]}]
set_property -dict {PACKAGE_PIN AF23 IOSTANDARD LVCMOS25} [get_ports dac_irq]
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVCMOS25} [get_ports adc_fda]
set_property -dict {PACKAGE_PIN AE23 IOSTANDARD LVCMOS25} [get_ports adc_fdb]

set_property -dict {PACKAGE_PIN AJ23 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports trig_p]
set_property -dict {PACKAGE_PIN AJ24 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports trig_n]

# clocks

create_clock -period 2.000 -name tx_ref_clk [get_ports tx_ref_clk_p]
create_clock -period 2.000 -name rx_ref_clk [get_ports rx_ref_clk_p]
create_clock -period 4.000 -name tx_div_clk [get_pins i_system_wrapper/system_i/util_daq2_xcvr/inst/i_xch_0/i_gtxe2_channel/TXOUTCLK]
create_clock -period 4.000 -name rx_div_clk [get_pins i_system_wrapper/system_i/util_daq2_xcvr/inst/i_xch_0/i_gtxe2_channel/RXOUTCLK]



