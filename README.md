# Libero_HDL_Simulink
Open Libero
Project / Execute script 
Simulink_HDL_Libero/hdl_prj/ipcore/SYSTEM_ip_v1_0/SYSTEM_ip_hw.tcl
fix in tcl: sd_replace_component -sd_name Libero_sd -instance_name {SYSTEM_ip_0} -new_component_name {SYSTEM_ip%hdl/SYSTEM_ip.v}
add components: clocks, initialization, AXI4Interconnect
rename Libero_sd to main (or what you want)
set main as Root
Derive timing constrains
synthesis
assign pins before Place and Route (or left for auto assign)
Verify Timing
if all is green do next steps:
right mouse button on main component and choose Hierarchicla Export Component Description
point to folder with Libero_HDL (top folder in this repo)
do not forget copy constrains from prj to ./constains
close current project and run Project / Execute script
load.tcl
if it executed withour errors - you will get clear Libero project from simulink sources 
