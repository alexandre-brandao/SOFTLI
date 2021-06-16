connect -url tcp:127.0.0.1:3121
source C:/adi/hdl/projects/daq2/zc706/daq2_zc706.sdk/system_top_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0
loadhw -hw C:/adi/hdl/projects/daq2/zc706/daq2_zc706.sdk/system_top_hw_platform_2/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0
dow C:/adi/hdl/projects/daq2/zc706/daq2_zc706.sdk/bm_sw_daq2/Debug/bm_sw_daq2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1E177"} -index 0
con
