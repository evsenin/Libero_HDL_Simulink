#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
source hdl_source.tcl
build_design_hierarchy

#Sourcing the Tcl files in which HDL+ core definitions are created for HDL modules
source components/CameraIO_ip.tcl 
source components/SYSTEM_ip.tcl 
build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source components/COREAXI4INTERCONNECT_C0.tcl 
source components/PF_CLK_DIV_C0.tcl 
source components/PF_INIT_MONITOR_C0.tcl 
source components/PF_OSC_C0.tcl 
source components/main.tcl 
build_design_hierarchy
