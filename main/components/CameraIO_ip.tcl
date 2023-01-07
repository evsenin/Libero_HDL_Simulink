# Exporting core CameraIO_ip to TCL
# Exporting Create HDL core command for module CameraIO_ip
create_hdl_core -file {hdl/CameraIO_ip.v} -module {CameraIO_ip} -library {work} -package {}
# Exporting BIF information of  HDL core command for module CameraIO_ip
hdl_core_add_bif -hdl_core_name {CameraIO_ip} -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name {AXI4} -signal_map {\
"AWID:AXI4_AWID" \
"AWADDR:AXI4_AWADDR" \
"AWLEN:AXI4_AWLEN" \
"AWSIZE:AXI4_AWSIZE" \
"AWBURST:AXI4_AWBURST" \
"AWLOCK:AXI4_AWLOCK" \
"AWCACHE:AXI4_AWCACHE" \
"AWPROT:AXI4_AWPROT" \
"AWVALID:AXI4_AWVALID" \
"WDATA:AXI4_WDATA" \
"WSTRB:AXI4_WSTRB" \
"WLAST:AXI4_WLAST" \
"WVALID:AXI4_WVALID" \
"BREADY:AXI4_BREADY" \
"ARID:AXI4_ARID" \
"ARADDR:AXI4_ARADDR" \
"ARLEN:AXI4_ARLEN" \
"ARSIZE:AXI4_ARSIZE" \
"ARBURST:AXI4_ARBURST" \
"ARLOCK:AXI4_ARLOCK" \
"ARCACHE:AXI4_ARCACHE" \
"ARPROT:AXI4_ARPROT" \
"ARVALID:AXI4_ARVALID" \
"RREADY:AXI4_RREADY" \
"AWREADY:AXI4_AWREADY" \
"WREADY:AXI4_WREADY" \
"BID:AXI4_BID" \
"BRESP:AXI4_BRESP" \
"BVALID:AXI4_BVALID" \
"ARREADY:AXI4_ARREADY" \
"RID:AXI4_RID" \
"RDATA:AXI4_RDATA" \
"RRESP:AXI4_RRESP" \
"RLAST:AXI4_RLAST" \
"RVALID:AXI4_RVALID" }
