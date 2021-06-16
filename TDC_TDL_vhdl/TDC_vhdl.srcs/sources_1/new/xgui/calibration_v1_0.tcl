# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_STAGES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIM_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAP_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Xoff" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Yoff" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_STAGES { PARAM_VALUE.NUM_STAGES } {
	# Procedure called to update NUM_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_STAGES { PARAM_VALUE.NUM_STAGES } {
	# Procedure called to validate NUM_STAGES
	return true
}

proc update_PARAM_VALUE.SIM_MODE { PARAM_VALUE.SIM_MODE } {
	# Procedure called to update SIM_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIM_MODE { PARAM_VALUE.SIM_MODE } {
	# Procedure called to validate SIM_MODE
	return true
}

proc update_PARAM_VALUE.TAP_DELAY { PARAM_VALUE.TAP_DELAY } {
	# Procedure called to update TAP_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAP_DELAY { PARAM_VALUE.TAP_DELAY } {
	# Procedure called to validate TAP_DELAY
	return true
}

proc update_PARAM_VALUE.Xoff { PARAM_VALUE.Xoff } {
	# Procedure called to update Xoff when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Xoff { PARAM_VALUE.Xoff } {
	# Procedure called to validate Xoff
	return true
}

proc update_PARAM_VALUE.Yoff { PARAM_VALUE.Yoff } {
	# Procedure called to update Yoff when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Yoff { PARAM_VALUE.Yoff } {
	# Procedure called to validate Yoff
	return true
}


proc update_MODELPARAM_VALUE.NUM_STAGES { MODELPARAM_VALUE.NUM_STAGES PARAM_VALUE.NUM_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_STAGES}] ${MODELPARAM_VALUE.NUM_STAGES}
}

proc update_MODELPARAM_VALUE.Xoff { MODELPARAM_VALUE.Xoff PARAM_VALUE.Xoff } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Xoff}] ${MODELPARAM_VALUE.Xoff}
}

proc update_MODELPARAM_VALUE.Yoff { MODELPARAM_VALUE.Yoff PARAM_VALUE.Yoff } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Yoff}] ${MODELPARAM_VALUE.Yoff}
}

proc update_MODELPARAM_VALUE.SIM_MODE { MODELPARAM_VALUE.SIM_MODE PARAM_VALUE.SIM_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIM_MODE}] ${MODELPARAM_VALUE.SIM_MODE}
}

proc update_MODELPARAM_VALUE.TAP_DELAY { MODELPARAM_VALUE.TAP_DELAY PARAM_VALUE.TAP_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAP_DELAY}] ${MODELPARAM_VALUE.TAP_DELAY}
}

