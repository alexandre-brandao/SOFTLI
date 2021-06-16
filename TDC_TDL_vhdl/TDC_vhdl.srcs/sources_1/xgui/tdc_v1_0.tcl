# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_STAGES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RUN_SIMULATION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_LOCATION_OF_SLICE_X" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_LOCATION_OF_SLICE_Y" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAP_DELAY_PS" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_STAGES { PARAM_VALUE.NUM_STAGES } {
	# Procedure called to update NUM_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_STAGES { PARAM_VALUE.NUM_STAGES } {
	# Procedure called to validate NUM_STAGES
	return true
}

proc update_PARAM_VALUE.RUN_SIMULATION { PARAM_VALUE.RUN_SIMULATION } {
	# Procedure called to update RUN_SIMULATION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RUN_SIMULATION { PARAM_VALUE.RUN_SIMULATION } {
	# Procedure called to validate RUN_SIMULATION
	return true
}

proc update_PARAM_VALUE.START_LOCATION_OF_SLICE_X { PARAM_VALUE.START_LOCATION_OF_SLICE_X } {
	# Procedure called to update START_LOCATION_OF_SLICE_X when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_LOCATION_OF_SLICE_X { PARAM_VALUE.START_LOCATION_OF_SLICE_X } {
	# Procedure called to validate START_LOCATION_OF_SLICE_X
	return true
}

proc update_PARAM_VALUE.START_LOCATION_OF_SLICE_Y { PARAM_VALUE.START_LOCATION_OF_SLICE_Y } {
	# Procedure called to update START_LOCATION_OF_SLICE_Y when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_LOCATION_OF_SLICE_Y { PARAM_VALUE.START_LOCATION_OF_SLICE_Y } {
	# Procedure called to validate START_LOCATION_OF_SLICE_Y
	return true
}

proc update_PARAM_VALUE.TAP_DELAY_PS { PARAM_VALUE.TAP_DELAY_PS } {
	# Procedure called to update TAP_DELAY_PS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAP_DELAY_PS { PARAM_VALUE.TAP_DELAY_PS } {
	# Procedure called to validate TAP_DELAY_PS
	return true
}


proc update_MODELPARAM_VALUE.NUM_STAGES { MODELPARAM_VALUE.NUM_STAGES PARAM_VALUE.NUM_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_STAGES}] ${MODELPARAM_VALUE.NUM_STAGES}
}

proc update_MODELPARAM_VALUE.START_LOCATION_OF_SLICE_X { MODELPARAM_VALUE.START_LOCATION_OF_SLICE_X PARAM_VALUE.START_LOCATION_OF_SLICE_X } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_LOCATION_OF_SLICE_X}] ${MODELPARAM_VALUE.START_LOCATION_OF_SLICE_X}
}

proc update_MODELPARAM_VALUE.START_LOCATION_OF_SLICE_Y { MODELPARAM_VALUE.START_LOCATION_OF_SLICE_Y PARAM_VALUE.START_LOCATION_OF_SLICE_Y } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_LOCATION_OF_SLICE_Y}] ${MODELPARAM_VALUE.START_LOCATION_OF_SLICE_Y}
}

proc update_MODELPARAM_VALUE.RUN_SIMULATION { MODELPARAM_VALUE.RUN_SIMULATION PARAM_VALUE.RUN_SIMULATION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RUN_SIMULATION}] ${MODELPARAM_VALUE.RUN_SIMULATION}
}

proc update_MODELPARAM_VALUE.TAP_DELAY_PS { MODELPARAM_VALUE.TAP_DELAY_PS PARAM_VALUE.TAP_DELAY_PS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAP_DELAY_PS}] ${MODELPARAM_VALUE.TAP_DELAY_PS}
}

