# Creating SmartDesign main
set sd_name {main}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_MISO} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_MISO} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_nERROR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TVS_valid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_I2S_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_I2S_FS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_I2S_SDIN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_I2S_SDOUT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_MOSI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_SCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_nCS0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI2_MOSI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI2_SCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI2_nCS0} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_CLK_SEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_LOCKED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_nRESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_RESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PPS_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SysReset_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_ENB_MISO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_MISO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI2_MISO} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CC_M20} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PLL_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWR_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SYS_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {TVS_chan} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {TVS_data} -port_direction {IN} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {CC_M43} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWR_CONTOL} -port_direction {OUT} -port_range {[7:0]}


# Add COREAXI4INTERCONNECT_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXI4INTERCONNECT_C0} -instance_name {COREAXI4INTERCONNECT_C0_0}



# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_INIT_MONITOR_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_INIT_MONITOR_C0} -instance_name {PF_INIT_MONITOR_C0_0}



# Add PF_OSC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_OSC_C0} -instance_name {PF_OSC_C0_0}



# Add SYSTEM_ip_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {SYSTEM_ip} -instance_name {SYSTEM_ip_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_CLK_SEL" "SYSTEM_ip_0:CC_CLK_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_LOCKED" "SYSTEM_ip_0:CC_LOCKED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_MISO" "SYSTEM_ip_0:CC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_MOSI" "SYSTEM_ip_0:CC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_SCK" "SYSTEM_ip_0:CC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_nCS" "SYSTEM_ip_0:CC_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_nRESET" "SYSTEM_ip_0:CC_nRESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:ACLK" "PF_CLK_DIV_C0_0:CLK_OUT" "SYSTEM_ip_0:AXI4_ACLK" "SYSTEM_ip_0:IPCORE_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:ARESETN" "PF_INIT_MONITOR_C0_0:DEVICE_INIT_DONE" "SYSTEM_ip_0:AXI4_ARESETN" "SYSTEM_ip_0:IPCORE_RESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_RESET" "SYSTEM_ip_0:DDR_RESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MonADC_MISO" "SYSTEM_ip_0:MonADC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MonADC_MOSI" "SYSTEM_ip_0:MonADC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MonADC_SCK" "SYSTEM_ip_0:MonADC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MonADC_nCS" "SYSTEM_ip_0:MonADC_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MonADC_nERROR" "SYSTEM_ip_0:MonADC_nERROR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "PF_OSC_C0_0:RCOSC_160MHZ_CLK_DIV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PPS_OUT" "SYSTEM_ip_0:PPS_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:SysReset_N" "SysReset_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:TVS_valid" "TVS_valid" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_I2S_CLK" "XAVIER_I2S_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_I2S_FS" "XAVIER_I2S_FS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_I2S_SDIN" "XAVIER_I2S_SDIN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_I2S_SDOUT" "XAVIER_I2S_SDOUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_RESET_N" "XAVIER_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_ENB_MISO" "XAVIER_SPI1_ENB_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_MISO" "XAVIER_SPI1_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_MOSI" "XAVIER_SPI1_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_SCK" "XAVIER_SPI1_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_nCS0" "XAVIER_SPI1_nCS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_MISO" "XAVIER_SPI2_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_MOSI" "XAVIER_SPI2_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_SCK" "XAVIER_SPI2_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_nCS0" "XAVIER_SPI2_nCS0" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_M20" "SYSTEM_ip_0:CC_M20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_M43" "SYSTEM_ip_0:CC_M43" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PLL_STATUS" "SYSTEM_ip_0:PLL_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWR_CONTOL" "SYSTEM_ip_0:PWR_CONTOL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWR_STATUS" "SYSTEM_ip_0:PWR_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:SYS_STATUS" "SYS_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:TVS_chan" "TVS_chan" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:TVS_data" "TVS_data" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster0" "SYSTEM_ip_0:AXI4_Master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mslave0" "SYSTEM_ip_0:AXI4" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign main
generate_component -component_name ${sd_name}
