create_clock -period 2.000 -name clk -waveform {0.000 1.000} [get_ports clk_i]

set_false_path -from [list [get_pins -hierarchical *fine_start_r_reg*C] [get_pins -hierarchical *fine_stop_r_reg*C] [get_pins -hierarchical *coarse_cnt_r*C]] -to [get_pins -hierarchical *measure_ps_r*D]

set_operating_conditions -grade extended
