#!/usr/bin/tclsh
#Connect to the board

connect -url tcp:127.0.0.1:3121

#PS7 initialization
source C:/adi/hdl/projects/daq2/zc706/system_top_hw_platform_V_1_0/ps7_init.tcl

#Indicate targets
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177" && level==0} -index 1

#Get Bitstream
fpga -file C:/adi/hdl/projects/daq2/zc706/system_top_hw_platform_V_1_0/system_top.bit

targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0

loadhw -hw C:/adi/hdl/projects/daq2/zc706/system_top_hw_platform_V_1_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]

configparams force-mem-access 1

targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0

stop

ps7_init

ps7_post_config

targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0

rst -processor

targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0

dow C:/adi/hdl/projects/daq2/zc706/daq2_main_hw/Debug/daq2_main_hw.elf

configparams force-mem-access 0

targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0

#Run 
con