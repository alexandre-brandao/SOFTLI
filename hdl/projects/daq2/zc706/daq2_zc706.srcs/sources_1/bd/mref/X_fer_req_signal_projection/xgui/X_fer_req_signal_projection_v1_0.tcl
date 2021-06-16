# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NCLOCK_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sample_size_bits" -parent ${Page_0}


}

proc update_PARAM_VALUE.NCLOCK_CYCLES { PARAM_VALUE.NCLOCK_CYCLES } {
	# Procedure called to update NCLOCK_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NCLOCK_CYCLES { PARAM_VALUE.NCLOCK_CYCLES } {
	# Procedure called to validate NCLOCK_CYCLES
	return true
}

proc update_PARAM_VALUE.sample_size_bits { PARAM_VALUE.sample_size_bits } {
	# Procedure called to update sample_size_bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sample_size_bits { PARAM_VALUE.sample_size_bits } {
	# Procedure called to validate sample_size_bits
	return true
}


proc update_MODELPARAM_VALUE.NCLOCK_CYCLES { MODELPARAM_VALUE.NCLOCK_CYCLES PARAM_VALUE.NCLOCK_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NCLOCK_CYCLES}] ${MODELPARAM_VALUE.NCLOCK_CYCLES}
}

proc update_MODELPARAM_VALUE.sample_size_bits { MODELPARAM_VALUE.sample_size_bits PARAM_VALUE.sample_size_bits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sample_size_bits}] ${MODELPARAM_VALUE.sample_size_bits}
}

