# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DAC_DATAPATH_DISABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DAC_DDS_CORDIC_DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DAC_DDS_CORDIC_PHASE_DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DAC_DDS_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "QUAD_OR_DUAL_N" -parent ${Page_0}


}

proc update_PARAM_VALUE.DAC_DATAPATH_DISABLE { PARAM_VALUE.DAC_DATAPATH_DISABLE } {
	# Procedure called to update DAC_DATAPATH_DISABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_DATAPATH_DISABLE { PARAM_VALUE.DAC_DATAPATH_DISABLE } {
	# Procedure called to validate DAC_DATAPATH_DISABLE
	return true
}

proc update_PARAM_VALUE.DAC_DDS_CORDIC_DW { PARAM_VALUE.DAC_DDS_CORDIC_DW } {
	# Procedure called to update DAC_DDS_CORDIC_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_DDS_CORDIC_DW { PARAM_VALUE.DAC_DDS_CORDIC_DW } {
	# Procedure called to validate DAC_DDS_CORDIC_DW
	return true
}

proc update_PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW { PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW } {
	# Procedure called to update DAC_DDS_CORDIC_PHASE_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW { PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW } {
	# Procedure called to validate DAC_DDS_CORDIC_PHASE_DW
	return true
}

proc update_PARAM_VALUE.DAC_DDS_TYPE { PARAM_VALUE.DAC_DDS_TYPE } {
	# Procedure called to update DAC_DDS_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_DDS_TYPE { PARAM_VALUE.DAC_DDS_TYPE } {
	# Procedure called to validate DAC_DDS_TYPE
	return true
}

proc update_PARAM_VALUE.ID { PARAM_VALUE.ID } {
	# Procedure called to update ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID { PARAM_VALUE.ID } {
	# Procedure called to validate ID
	return true
}

proc update_PARAM_VALUE.QUAD_OR_DUAL_N { PARAM_VALUE.QUAD_OR_DUAL_N } {
	# Procedure called to update QUAD_OR_DUAL_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.QUAD_OR_DUAL_N { PARAM_VALUE.QUAD_OR_DUAL_N } {
	# Procedure called to validate QUAD_OR_DUAL_N
	return true
}


proc update_MODELPARAM_VALUE.ID { MODELPARAM_VALUE.ID PARAM_VALUE.ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID}] ${MODELPARAM_VALUE.ID}
}

proc update_MODELPARAM_VALUE.QUAD_OR_DUAL_N { MODELPARAM_VALUE.QUAD_OR_DUAL_N PARAM_VALUE.QUAD_OR_DUAL_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.QUAD_OR_DUAL_N}] ${MODELPARAM_VALUE.QUAD_OR_DUAL_N}
}

proc update_MODELPARAM_VALUE.DAC_DDS_TYPE { MODELPARAM_VALUE.DAC_DDS_TYPE PARAM_VALUE.DAC_DDS_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_DDS_TYPE}] ${MODELPARAM_VALUE.DAC_DDS_TYPE}
}

proc update_MODELPARAM_VALUE.DAC_DDS_CORDIC_DW { MODELPARAM_VALUE.DAC_DDS_CORDIC_DW PARAM_VALUE.DAC_DDS_CORDIC_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_DDS_CORDIC_DW}] ${MODELPARAM_VALUE.DAC_DDS_CORDIC_DW}
}

proc update_MODELPARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW { MODELPARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW}] ${MODELPARAM_VALUE.DAC_DDS_CORDIC_PHASE_DW}
}

proc update_MODELPARAM_VALUE.DAC_DATAPATH_DISABLE { MODELPARAM_VALUE.DAC_DATAPATH_DISABLE PARAM_VALUE.DAC_DATAPATH_DISABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_DATAPATH_DISABLE}] ${MODELPARAM_VALUE.DAC_DATAPATH_DISABLE}
}

