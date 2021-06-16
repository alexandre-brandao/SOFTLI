# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config  -id {Vivado 12-1790}  -string {{Evaluation} {features} {should} {NOT} {be} {used} {in} {production} {systems.}}  -new_severity {WARNING} 
set_msg_config  -id {BD 41-1343}  -new_severity {WARNING} 
set_msg_config  -id {BD 41-1306}  -new_severity {WARNING} 
set_msg_config  -id {BD 41-1276}  -severity {CRITICAL WARNING}  -new_severity {ERROR} 
set_msg_config  -id {IP_Flow 19-3656}  -new_severity {INFO} 
set_msg_config  -id {IP_Flow 19-4623}  -new_severity {INFO} 
set_msg_config  -id {IP_Flow 19-459}  -new_severity {INFO} 
set_msg_config  -id {Place 30-73}  -string {{axi_spi}}  -new_severity {WARNING} 
set_msg_config  -string {{PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY}}  -new_severity {WARNING} 

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z045ffg900-2
  set_property board_part xilinx.com:zc706:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/adi/hdl/projects/daq2/zc706/daq2_zc706.cache/wt [current_project]
  set_property parent.project_path C:/adi/hdl/projects/daq2/zc706/daq2_zc706.xpr [current_project]
  set_property ip_repo_paths {
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/adi/hdl/projects/daq2/ip_repo/Measurements_1.0}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/VivadoProjects/xfer_req_signal_projection/xfer_req_signal_projection.srcs/sources_1/new}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/VivadoProjects/TDC_vhdl/TDC_vhdl.srcs/sources_1/new}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/adi/hdl/projects/daq2/ip_repo/UserMemoryAccess_1.0}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/adi/hdl/projects/daq2/ip_repo/Singleshot_1.0}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/adi/hdl/projects/daq2/ip_repo/USER_PIN_CONTROL_1.0}
  {C:/Users/Xandr/OneDrive - Universidade de Aveiro/MEMORY_Buffer/MEMORY_Buffer.srcs/sources_1/new}
  C:/adi/hdl/library
} [current_project]
  update_ip_catalog
  set_property ip_output_repo C:/adi/hdl/projects/daq2/zc706/daq2_zc706.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/adi/hdl/projects/daq2/zc706/daq2_zc706.runs/synth_1/system_top.dcp
  set_msg_config -source 4 -id {BD 41-1661} -limit 0
  set_param project.isImplRun true
  add_files C:/adi/hdl/projects/daq2/zc706/daq2_zc706.srcs/sources_1/bd/system/system.bd
  set_param project.isImplRun false
  read_xdc C:/adi/hdl/projects/daq2/zc706/daq2_zc706.srcs/constrs_1/new/debug.xdc
  read_xdc C:/adi/hdl/projects/daq2/zc706/daq2_zc706.srcs/constrs_1/new/system.xdc
  read_xdc C:/adi/hdl/projects/daq2/zc706/system_constr.xdc
  read_xdc C:/adi/hdl/projects/common/zc706/zc706_plddr3_constr.xdc
  read_xdc C:/adi/hdl/projects/common/zc706/zc706_system_constr.xdc
  set_param project.isImplRun true
  link_design -top system_top -part xc7z045ffg900-2
  set_param project.isImplRun false
  write_hwdef -force -file system_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force system_top_opt.dcp
  create_report "impl_2_opt_report_drc_0" "report_drc -file system_top_drc_opted.rpt -pb system_top_drc_opted.pb -rpx system_top_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force system_top_placed.dcp
  create_report "impl_2_place_report_io_0" "report_io -file system_top_io_placed.rpt"
  create_report "impl_2_place_report_utilization_0" "report_utilization -file system_top_utilization_placed.rpt -pb system_top_utilization_placed.pb"
  create_report "impl_2_place_report_control_sets_0" "report_control_sets -verbose -file system_top_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_top_routed.dcp
  create_report "impl_2_route_report_drc_0" "report_drc -file system_top_drc_routed.rpt -pb system_top_drc_routed.pb -rpx system_top_drc_routed.rpx"
  create_report "impl_2_route_report_methodology_0" "report_methodology -file system_top_methodology_drc_routed.rpt -pb system_top_methodology_drc_routed.pb -rpx system_top_methodology_drc_routed.rpx"
  create_report "impl_2_route_report_power_0" "report_power -file system_top_power_routed.rpt -pb system_top_power_summary_routed.pb -rpx system_top_power_routed.rpx"
  create_report "impl_2_route_report_route_status_0" "report_route_status -file system_top_route_status.rpt -pb system_top_route_status.pb"
  create_report "impl_2_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file system_top_timing_summary_routed.rpt -pb system_top_timing_summary_routed.pb -rpx system_top_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_2_route_report_incremental_reuse_0" "report_incremental_reuse -file system_top_incremental_reuse_routed.rpt"
  create_report "impl_2_route_report_clock_utilization_0" "report_clock_utilization -file system_top_clock_utilization_routed.rpt"
  create_report "impl_2_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file system_top_bus_skew_routed.rpt -pb system_top_bus_skew_routed.pb -rpx system_top_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force system_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force system_top.mmi }
  catch { write_bmm -force system_top_bd.bmm }
  write_bitstream -force system_top.bit 
  catch { write_sysdef -hwdef system_top.hwdef -bitfile system_top.bit -meminfo system_top.mmi -file system_top.sysdef }
  catch {write_debug_probes -quiet -force system_top}
  catch {file copy -force system_top.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

