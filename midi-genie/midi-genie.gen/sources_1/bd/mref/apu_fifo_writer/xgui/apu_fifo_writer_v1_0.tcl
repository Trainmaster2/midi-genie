# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ENABLE_DMC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_NOISE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_PULSE_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_PULSE_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_TRIANGLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ENABLE_DMC { PARAM_VALUE.ENABLE_DMC } {
	# Procedure called to update ENABLE_DMC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_DMC { PARAM_VALUE.ENABLE_DMC } {
	# Procedure called to validate ENABLE_DMC
	return true
}

proc update_PARAM_VALUE.ENABLE_NOISE { PARAM_VALUE.ENABLE_NOISE } {
	# Procedure called to update ENABLE_NOISE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_NOISE { PARAM_VALUE.ENABLE_NOISE } {
	# Procedure called to validate ENABLE_NOISE
	return true
}

proc update_PARAM_VALUE.ENABLE_PULSE_1 { PARAM_VALUE.ENABLE_PULSE_1 } {
	# Procedure called to update ENABLE_PULSE_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_PULSE_1 { PARAM_VALUE.ENABLE_PULSE_1 } {
	# Procedure called to validate ENABLE_PULSE_1
	return true
}

proc update_PARAM_VALUE.ENABLE_PULSE_2 { PARAM_VALUE.ENABLE_PULSE_2 } {
	# Procedure called to update ENABLE_PULSE_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_PULSE_2 { PARAM_VALUE.ENABLE_PULSE_2 } {
	# Procedure called to validate ENABLE_PULSE_2
	return true
}

proc update_PARAM_VALUE.ENABLE_TRIANGLE { PARAM_VALUE.ENABLE_TRIANGLE } {
	# Procedure called to update ENABLE_TRIANGLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_TRIANGLE { PARAM_VALUE.ENABLE_TRIANGLE } {
	# Procedure called to validate ENABLE_TRIANGLE
	return true
}

proc update_PARAM_VALUE.FIFO_DATA_WIDTH { PARAM_VALUE.FIFO_DATA_WIDTH } {
	# Procedure called to update FIFO_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_DATA_WIDTH { PARAM_VALUE.FIFO_DATA_WIDTH } {
	# Procedure called to validate FIFO_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FIFO_DATA_WIDTH { MODELPARAM_VALUE.FIFO_DATA_WIDTH PARAM_VALUE.FIFO_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_DATA_WIDTH}] ${MODELPARAM_VALUE.FIFO_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ENABLE_PULSE_1 { MODELPARAM_VALUE.ENABLE_PULSE_1 PARAM_VALUE.ENABLE_PULSE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_PULSE_1}] ${MODELPARAM_VALUE.ENABLE_PULSE_1}
}

proc update_MODELPARAM_VALUE.ENABLE_PULSE_2 { MODELPARAM_VALUE.ENABLE_PULSE_2 PARAM_VALUE.ENABLE_PULSE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_PULSE_2}] ${MODELPARAM_VALUE.ENABLE_PULSE_2}
}

proc update_MODELPARAM_VALUE.ENABLE_TRIANGLE { MODELPARAM_VALUE.ENABLE_TRIANGLE PARAM_VALUE.ENABLE_TRIANGLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_TRIANGLE}] ${MODELPARAM_VALUE.ENABLE_TRIANGLE}
}

proc update_MODELPARAM_VALUE.ENABLE_NOISE { MODELPARAM_VALUE.ENABLE_NOISE PARAM_VALUE.ENABLE_NOISE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_NOISE}] ${MODELPARAM_VALUE.ENABLE_NOISE}
}

proc update_MODELPARAM_VALUE.ENABLE_DMC { MODELPARAM_VALUE.ENABLE_DMC PARAM_VALUE.ENABLE_DMC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_DMC}] ${MODELPARAM_VALUE.ENABLE_DMC}
}

