# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MAX_PACKET_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAM_FLIT" -parent ${Page_0}


}

proc update_PARAM_VALUE.MAX_PACKET_SIZE { PARAM_VALUE.MAX_PACKET_SIZE } {
	# Procedure called to update MAX_PACKET_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_PACKET_SIZE { PARAM_VALUE.MAX_PACKET_SIZE } {
	# Procedure called to validate MAX_PACKET_SIZE
	return true
}

proc update_PARAM_VALUE.TAM_FLIT { PARAM_VALUE.TAM_FLIT } {
	# Procedure called to update TAM_FLIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAM_FLIT { PARAM_VALUE.TAM_FLIT } {
	# Procedure called to validate TAM_FLIT
	return true
}


proc update_MODELPARAM_VALUE.TAM_FLIT { MODELPARAM_VALUE.TAM_FLIT PARAM_VALUE.TAM_FLIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAM_FLIT}] ${MODELPARAM_VALUE.TAM_FLIT}
}

proc update_MODELPARAM_VALUE.MAX_PACKET_SIZE { MODELPARAM_VALUE.MAX_PACKET_SIZE PARAM_VALUE.MAX_PACKET_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_PACKET_SIZE}] ${MODELPARAM_VALUE.MAX_PACKET_SIZE}
}

