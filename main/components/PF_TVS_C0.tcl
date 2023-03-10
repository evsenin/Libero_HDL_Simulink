# Exporting Component Description of PF_TVS_C0 to TCL
# Family: PolarFire
# Part Number: MPF300T-FCG1152E
# Create and Configure the core component PF_TVS_C0
create_and_configure_core -core_vlnv {Actel:SgCore:PF_TVS:1.0.110} -component_name {PF_TVS_C0} -params {\
"TVS_CONTROL_ENABLE_1P8V_CHANNEL:true"  \
"TVS_CONTROL_ENABLE_1V_CHANNEL:true"  \
"TVS_CONTROL_ENABLE_2P5V_CHANNEL:true"  \
"TVS_CONTROL_ENABLE_TEMP_CHANNEL:true"  \
"TVS_CONTROL_RATE:60"  \
"TVS_CONTROL_RATE_IN_US:1920"  \
"TVS_TRIGGER_HIGH:100"  \
"TVS_TRIGGER_LOW:-40"   }
# Exporting Component Description of PF_TVS_C0 to TCL done
