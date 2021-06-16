set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/util_daq2_xcvr_tx_out_clk_0]


set_property MARK_DEBUG false [get_nets {i_system_wrapper/system_i/axi_ad9680_core/rx_sof[0]}]
set_property MARK_DEBUG false [get_nets {i_system_wrapper/system_i/axi_ad9680_core/rx_sof[1]}]
set_property MARK_DEBUG false [get_nets {i_system_wrapper/system_i/axi_ad9680_core/rx_sof[2]}]
set_property MARK_DEBUG false [get_nets {i_system_wrapper/system_i/axi_ad9680_core/rx_sof[3]}]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/axi_ad9680_core/s_axi_bvalid]

set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/sys_cpu_clk]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/axi_ad9680_core/s_axi_wvalid]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/axi_ad9680_core/s_axi_bready]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/axi_ad9680_core/s_axi_wready]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/axi_ad9680_core/s_axi_rvalid]

set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/Counter_Xbits_0_wraparound]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/DFlipFlop_0_outSignal]
set_property MARK_DEBUG false [get_nets i_system_wrapper/system_i/StateMachine_0_Write_Enable]

connect_debug_port u_ila_0/clk [get_nets [list u_ila_0_clk_out1]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]

connect_debug_port u_ila_0/clk [get_nets [list i_system_wrapper/system_i/clk_wiz_0/inst/clk_out1]]
connect_debug_port u_ila_0/probe0 [get_nets [list i_system_wrapper/system_i/clk_wiz_0_clk_out1]]
connect_debug_port u_ila_0/probe1 [get_nets [list i_system_wrapper/system_i/edgeDetector_0_redge_o]]
connect_debug_port u_ila_0/probe2 [get_nets [list i_system_wrapper/system_i/Singleshot_0_single_shot]]
connect_debug_port u_ila_0/probe3 [get_nets [list i_system_wrapper/system_i/Start_1CLK_STOP_0_start_o]]
connect_debug_port u_ila_0/probe4 [get_nets [list i_system_wrapper/system_i/Start_1CLK_STOP_0_stop_o]]
connect_debug_port u_ila_0/probe5 [get_nets [list i_system_wrapper/system_i/tdc_0_wr_en_o]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]



