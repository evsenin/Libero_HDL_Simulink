# Creating SmartDesign main
set sd_name {main}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_Master_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_MISO} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Expander_nRST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO27_PWM2} -port_direction {IN}
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

sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_FLASH} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_PWDN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_TRIG} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_nRST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM2_FLASH} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM2_PWDN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM2_TRIG} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM2_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM2_nRST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM3_FLASH} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM3_PWDN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM3_TRIG} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM3_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM3_nRST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_CLK_SEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_LOCKED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CC_nRESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_RESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Expander_nINT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MonADC_nCS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PPS_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RADAR0_enable} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RADAR1_enable} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SysReset_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI1_MISO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XAVIER_SPI2_MISO} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_7} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_8} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CC_M20} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PLL_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWR_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SYS_STATUS} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {TVS_chan} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {TVS_data} -port_direction {IN} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {CC_M43} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWR_CONTOL} -port_direction {OUT} -port_range {[7:0]}


# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_0:D} -value {GND}



# Add BIBUF_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_1:D} -value {GND}



# Add BIBUF_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_2}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_2:D} -value {GND}



# Add BIBUF_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_3}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_3:D} -value {GND}



# Add BIBUF_4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_4}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_4:D} -value {GND}



# Add BIBUF_5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_5}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_5:D} -value {GND}



# Add BIBUF_6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_6}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_6:D} -value {GND}



# Add BIBUF_7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_7}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_7:D} -value {GND}



# Add BIBUF_8 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_8}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_8:D} -value {GND}



# Add BIBUF_9 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_9}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_9:D} -value {GND}



# Add CameraIO_ip_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {CameraIO_ip} -instance_name {CameraIO_ip_0}



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



# Add TRIBUFF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {TRIBUFF} -instance_name {TRIBUFF_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:E" "CameraIO_ip_0:Expander_sdoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:PAD" "PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:Y" "CameraIO_ip_0:Expander_sdi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:E" "CameraIO_ip_0:Expander_scoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:PAD" "PAD_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:Y" "CameraIO_ip_0:Expander_sci" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:E" "CameraIO_ip_0:Muxer_sdoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:PAD" "PAD_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:Y" "CameraIO_ip_0:Muxer_sdi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:E" "CameraIO_ip_0:Muxer_scoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:PAD" "PAD_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:Y" "CameraIO_ip_0:Muxer_sci" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:E" "CameraIO_ip_0:Cam3_sdoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:PAD" "PAD_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:Y" "CameraIO_ip_0:Cam3_sdi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:E" "CameraIO_ip_0:Cam1_sdoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:PAD" "PAD_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:Y" "CameraIO_ip_0:Cam1_sdi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:E" "CameraIO_ip_0:Cam2_sdoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:PAD" "PAD_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:Y" "CameraIO_ip_0:Cam2_sdi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:E" "CameraIO_ip_0:Cam3_scoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:PAD" "PAD_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:Y" "CameraIO_ip_0:Cam3_sci" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_8:E" "CameraIO_ip_0:Cam2_scoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_8:PAD" "PAD_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_8:Y" "CameraIO_ip_0:Cam2_sci" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_9:E" "CameraIO_ip_0:Cam1_scoen" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_9:PAD" "PAD_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_9:Y" "CameraIO_ip_0:Cam1_sci" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_FLASH" "CameraIO_ip_0:CAM1_FLASH" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_PWDN" "CameraIO_ip_0:CAM1_PWDN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_TRIG" "CameraIO_ip_0:CAM1_TRIG" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_nCS" "CameraIO_ip_0:CAM1_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_nRST" "CameraIO_ip_0:CAM1_nRST" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM2_FLASH" "CameraIO_ip_0:CAM2_FLASH" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM2_PWDN" "CameraIO_ip_0:CAM2_PWDN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM2_TRIG" "CameraIO_ip_0:CAM2_TRIG" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM2_nCS" "CameraIO_ip_0:CAM2_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM2_nRST" "CameraIO_ip_0:CAM2_nRST" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM3_FLASH" "CameraIO_ip_0:CAM3_FLASH" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM3_PWDN" "CameraIO_ip_0:CAM3_PWDN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM3_TRIG" "CameraIO_ip_0:CAM3_TRIG" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM3_nCS" "CameraIO_ip_0:CAM3_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM3_nRST" "CameraIO_ip_0:CAM3_nRST" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_Master_CLK" "CameraIO_ip_0:CAM_Master_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_CLK_SEL" "SYSTEM_ip_0:CC_CLK_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_LOCKED" "SYSTEM_ip_0:CC_LOCKED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_MISO" "SYSTEM_ip_0:CC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_MOSI" "SYSTEM_ip_0:CC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_SCK" "SYSTEM_ip_0:CC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_nCS" "SYSTEM_ip_0:CC_nCS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CC_nRESET" "SYSTEM_ip_0:CC_nRESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:ACLK" "CameraIO_ip_0:AXI4_ACLK" "CameraIO_ip_0:IPCORE_CLK" "PF_CLK_DIV_C0_0:CLK_OUT" "SYSTEM_ip_0:AXI4_ACLK" "SYSTEM_ip_0:IPCORE_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:ARESETN" "CameraIO_ip_0:AXI4_ARESETN" "CameraIO_ip_0:IPCORE_RESETN" "PF_INIT_MONITOR_C0_0:DEVICE_INIT_DONE" "SYSTEM_ip_0:AXI4_ARESETN" "SYSTEM_ip_0:IPCORE_RESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CameraIO_ip_0:Expander_nINT" "Expander_nINT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CameraIO_ip_0:Expander_nRST" "Expander_nRST" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CameraIO_ip_0:GPIO27_PWM2" "GPIO27_PWM2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CameraIO_ip_0:RADAR0_enable" "RADAR0_enable" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CameraIO_ip_0:RADAR1_enable" "RADAR1_enable" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_ENB_MISO" "TRIBUFF_0:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_MISO" "TRIBUFF_0:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_MOSI" "XAVIER_SPI1_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_SCK" "XAVIER_SPI1_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI1_nCS0" "XAVIER_SPI1_nCS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_MISO" "XAVIER_SPI2_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_MOSI" "XAVIER_SPI2_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_SCK" "XAVIER_SPI2_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SYSTEM_ip_0:XAVIER_SPI2_nCS0" "XAVIER_SPI2_nCS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TRIBUFF_0:PAD" "XAVIER_SPI1_MISO" }

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
