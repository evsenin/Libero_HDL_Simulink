// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_dut.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_dut
// Source Path: SYSTEM_ip/SYSTEM_ip_dut
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_dut
          (clk,
           reset_x,
           TVS_valid,
           TVS_chan,
           TVS_data,
           SYS_STATUS,
           PWR_STATUS,
           PLL_STATUS,
           XAVIER_SPI2_SCK,
           XAVIER_SPI2_nCS0,
           XAVIER_SPI2_MOSI,
           XAVIER_I2S_CLK,
           XAVIER_I2S_FS,
           XAVIER_I2S_SDIN,
           XAVIER_I2S_SDOUT,
           AXI_CC_SPI_Wr,
           AXI_CC_CONTROL,
           CC_MISO,
           CC_M20,
           axi_wr_s2m_wr_ready,
           axi_wr_s2m_wr_complete,
           axi_rd_s2m_rd_aready,
           axi_rd_s2m_rd_dvalid,
           axi_rd_data,
           XAVIER_SPI1_nCS0,
           XAVIER_SPI1_SCK,
           XAVIER_SPI1_MOSI,
           MonADC_nERROR,
           MonADC_MISO,
           AXI_XAVIER_CONTROL,
           AXI_PWR_CONTROL,
           AXI_DDR_CONTROL,
           AXI_MonADC_SPI_Wr,
           AXI_MonADC_CONTROL,
           AXI_TVS_1000mV,
           AXI_TVS_1800mV,
           AXI_TVS_2500mV,
           AXI_TVS_tempr,
           AXI_SYS_STATUS,
           DDR_RESET,
           PWR_CONTOL,
           AXI_PWR_STATUS,
           XAVIER_SPI2_MISO,
           AXI_PLL_STATUS,
           PPS_OUT,
           AXI_I2S_STATUS,
           CC_nCS,
           CC_nRESET,
           CC_MOSI,
           CC_SCK,
           CC_M43,
           AXI_CC_SPI_Rd,
           AXI_CC_STATUS,
           CC_LOCKED,
           CC_CLK_SEL,
           SysReset_N,
           axi_wr_m2s_wr_addr,
           axi_wr_m2s_wr_len,
           axi_wr_m2s_wr_valid,
           axi_wr_data,
           axi_rd_m2s_rd_addr,
           axi_rd_m2s_rd_len,
           axi_rd_m2s_rd_avalid,
           XAVIER_SPI1_MISO,
           AXI_MonADC_STATUS,
           AXI_MonADC_SPI_Rd,
           AXI_Mon_1V8,
           AXI_Mon_3V3,
           AXI_Mon_CurrentIn,
           AXI_Mon_VoltageIn,
           AXI_Mon_12V,
           MonADC_nCS,
           MonADC_SCK,
           MonADC_MOSI,
           XAVIER_RESET_N,
           XAVIER_SPI1_ENB_MISO);


  input   clk;
  input   reset_x;
  input   TVS_valid;  // ufix1
  input   [1:0] TVS_chan;  // ufix2
  input   signed [15:0] TVS_data;  // sfix16
  input   [7:0] SYS_STATUS;  // ufix8
  input   [7:0] PWR_STATUS;  // ufix8
  input   [7:0] PLL_STATUS;  // ufix8
  input   XAVIER_SPI2_SCK;  // ufix1
  input   XAVIER_SPI2_nCS0;  // ufix1
  input   XAVIER_SPI2_MOSI;  // ufix1
  input   XAVIER_I2S_CLK;  // ufix1
  input   XAVIER_I2S_FS;  // ufix1
  input   XAVIER_I2S_SDIN;  // ufix1
  input   XAVIER_I2S_SDOUT;  // ufix1
  input   [31:0] AXI_CC_SPI_Wr;  // ufix32
  input   [31:0] AXI_CC_CONTROL;  // ufix32
  input   CC_MISO;  // ufix1
  input   [2:0] CC_M20;  // ufix3
  input   axi_wr_s2m_wr_ready;  // ufix1
  input   axi_wr_s2m_wr_complete;  // ufix1
  input   axi_rd_s2m_rd_aready;  // ufix1
  input   axi_rd_s2m_rd_dvalid;  // ufix1
  input   [31:0] axi_rd_data;  // ufix32
  input   XAVIER_SPI1_nCS0;  // ufix1
  input   XAVIER_SPI1_SCK;  // ufix1
  input   XAVIER_SPI1_MOSI;  // ufix1
  input   MonADC_nERROR;  // ufix1
  input   MonADC_MISO;  // ufix1
  input   [31:0] AXI_XAVIER_CONTROL;  // ufix32
  input   [31:0] AXI_PWR_CONTROL;  // ufix32
  input   [31:0] AXI_DDR_CONTROL;  // ufix32
  input   [31:0] AXI_MonADC_SPI_Wr;  // ufix32
  input   [31:0] AXI_MonADC_CONTROL;  // ufix32
  output  signed [31:0] AXI_TVS_1000mV;  // sfix32
  output  signed [31:0] AXI_TVS_1800mV;  // sfix32
  output  signed [31:0] AXI_TVS_2500mV;  // sfix32
  output  signed [31:0] AXI_TVS_tempr;  // sfix32
  output  [7:0] AXI_SYS_STATUS;  // ufix8
  output  DDR_RESET;  // ufix1
  output  [7:0] PWR_CONTOL;  // ufix8
  output  [7:0] AXI_PWR_STATUS;  // ufix8
  output  XAVIER_SPI2_MISO;  // ufix1
  output  [7:0] AXI_PLL_STATUS;  // ufix8
  output  PPS_OUT;  // ufix1
  output  [3:0] AXI_I2S_STATUS;  // ufix4
  output  CC_nCS;  // ufix1
  output  CC_nRESET;  // ufix1
  output  CC_MOSI;  // ufix1
  output  CC_SCK;  // ufix1
  output  [1:0] CC_M43;  // ufix2
  output  [31:0] AXI_CC_SPI_Rd;  // ufix32
  output  [31:0] AXI_CC_STATUS;  // ufix32
  output  CC_LOCKED;  // ufix1
  output  CC_CLK_SEL;  // ufix1
  output  SysReset_N;  // ufix1
  output  [31:0] axi_wr_m2s_wr_addr;  // ufix32
  output  [7:0] axi_wr_m2s_wr_len;  // ufix8
  output  axi_wr_m2s_wr_valid;  // ufix1
  output  [31:0] axi_wr_data;  // ufix32
  output  [31:0] axi_rd_m2s_rd_addr;  // ufix32
  output  [7:0] axi_rd_m2s_rd_len;  // ufix8
  output  axi_rd_m2s_rd_avalid;  // ufix1
  output  XAVIER_SPI1_MISO;  // ufix1
  output  [31:0] AXI_MonADC_STATUS;  // ufix32
  output  [31:0] AXI_MonADC_SPI_Rd;  // ufix32
  output  signed [31:0] AXI_Mon_1V8;  // sfix32
  output  signed [31:0] AXI_Mon_3V3;  // sfix32
  output  signed [31:0] AXI_Mon_CurrentIn;  // sfix32
  output  signed [31:0] AXI_Mon_VoltageIn;  // sfix32
  output  signed [31:0] AXI_Mon_12V;  // sfix32
  output  MonADC_nCS;  // ufix1
  output  MonADC_SCK;  // ufix1
  output  MonADC_MOSI;  // ufix1
  output  XAVIER_RESET_N;  // ufix1
  output  XAVIER_SPI1_ENB_MISO;  // ufix1


  wire signed [31:0] AXI_TVS_1000mV_sig;  // sfix32
  wire signed [31:0] AXI_TVS_1800mV_sig;  // sfix32
  wire signed [31:0] AXI_TVS_2500mV_sig;  // sfix32
  wire signed [31:0] AXI_TVS_tempr_sig;  // sfix32
  wire [7:0] AXI_SYS_STATUS_sig;  // ufix8
  wire DDR_RESET_sig;  // ufix1
  wire [7:0] PWR_CONTOL_sig;  // ufix8
  wire [7:0] AXI_PWR_STATUS_sig;  // ufix8
  wire XAVIER_SPI2_MISO_sig;  // ufix1
  wire [7:0] AXI_PLL_STATUS_sig;  // ufix8
  wire PPS_OUT_sig;  // ufix1
  wire [3:0] AXI_I2S_STATUS_sig;  // ufix4
  wire CC_nCS_sig;  // ufix1
  wire CC_nRESET_sig;  // ufix1
  wire CC_MOSI_sig;  // ufix1
  wire CC_SCK_sig;  // ufix1
  wire [1:0] CC_M43_sig;  // ufix2
  wire [31:0] AXI_CC_SPI_Rd_sig;  // ufix32
  wire [31:0] AXI_CC_STATUS_sig;  // ufix32
  wire CC_LOCKED_sig;  // ufix1
  wire CC_CLK_SEL_sig;  // ufix1
  wire SysReset_N_sig;  // ufix1
  wire [31:0] axi_wr_m2s_wr_addr_sig;  // ufix32
  wire [7:0] axi_wr_m2s_wr_len_sig;  // ufix8
  wire axi_wr_m2s_wr_valid_sig;  // ufix1
  wire [31:0] axi_wr_data_sig;  // ufix32
  wire [31:0] axi_rd_m2s_rd_addr_sig;  // ufix32
  wire [7:0] axi_rd_m2s_rd_len_sig;  // ufix8
  wire axi_rd_m2s_rd_avalid_sig;  // ufix1
  wire XAVIER_SPI1_MISO_sig;  // ufix1
  wire [31:0] AXI_MonADC_STATUS_sig;  // ufix32
  wire [31:0] AXI_MonADC_SPI_Rd_sig;  // ufix32
  wire signed [31:0] AXI_Mon_1V8_sig;  // sfix32
  wire signed [31:0] AXI_Mon_3V3_sig;  // sfix32
  wire signed [31:0] AXI_Mon_CurrentIn_sig;  // sfix32
  wire signed [31:0] AXI_Mon_VoltageIn_sig;  // sfix32
  wire signed [31:0] AXI_Mon_12V_sig;  // sfix32
  wire MonADC_nCS_sig;  // ufix1
  wire MonADC_SCK_sig;  // ufix1
  wire MonADC_MOSI_sig;  // ufix1
  wire XAVIER_RESET_N_sig;  // ufix1
  wire XAVIER_SPI1_ENB_MISO_sig;  // ufix1


  SYSTEM_ip_src_SYSTEM u_SYSTEM_ip_src_SYSTEM (.clk(clk),
                                               .reset_x(reset_x),
                                               .TVS_valid(TVS_valid),  // ufix1
                                               .TVS_chan(TVS_chan),  // ufix2
                                               .TVS_data(TVS_data),  // sfix16
                                               .SYS_STATUS(SYS_STATUS),  // ufix8
                                               .PWR_STATUS(PWR_STATUS),  // ufix8
                                               .PLL_STATUS(PLL_STATUS),  // ufix8
                                               .XAVIER_SPI2_SCK(XAVIER_SPI2_SCK),  // ufix1
                                               .XAVIER_SPI2_nCS0(XAVIER_SPI2_nCS0),  // ufix1
                                               .XAVIER_SPI2_MOSI(XAVIER_SPI2_MOSI),  // ufix1
                                               .XAVIER_I2S_CLK(XAVIER_I2S_CLK),  // ufix1
                                               .XAVIER_I2S_FS(XAVIER_I2S_FS),  // ufix1
                                               .XAVIER_I2S_SDIN(XAVIER_I2S_SDIN),  // ufix1
                                               .XAVIER_I2S_SDOUT(XAVIER_I2S_SDOUT),  // ufix1
                                               .AXI_CC_SPI_Wr(AXI_CC_SPI_Wr),  // ufix32
                                               .AXI_CC_CONTROL(AXI_CC_CONTROL),  // ufix32
                                               .CC_MISO(CC_MISO),  // ufix1
                                               .CC_M20(CC_M20),  // ufix3
                                               .axi_wr_s2m_wr_ready(axi_wr_s2m_wr_ready),  // ufix1
                                               .axi_wr_s2m_wr_complete(axi_wr_s2m_wr_complete),  // ufix1
                                               .axi_rd_s2m_rd_aready(axi_rd_s2m_rd_aready),  // ufix1
                                               .axi_rd_s2m_rd_dvalid(axi_rd_s2m_rd_dvalid),  // ufix1
                                               .axi_rd_data(axi_rd_data),  // ufix32
                                               .XAVIER_SPI1_nCS0(XAVIER_SPI1_nCS0),  // ufix1
                                               .XAVIER_SPI1_SCK(XAVIER_SPI1_SCK),  // ufix1
                                               .XAVIER_SPI1_MOSI(XAVIER_SPI1_MOSI),  // ufix1
                                               .MonADC_nERROR(MonADC_nERROR),  // ufix1
                                               .MonADC_MISO(MonADC_MISO),  // ufix1
                                               .AXI_XAVIER_CONTROL(AXI_XAVIER_CONTROL),  // ufix32
                                               .AXI_PWR_CONTROL(AXI_PWR_CONTROL),  // ufix32
                                               .AXI_DDR_CONTROL(AXI_DDR_CONTROL),  // ufix32
                                               .AXI_MonADC_SPI_Wr(AXI_MonADC_SPI_Wr),  // ufix32
                                               .AXI_MonADC_CONTROL(AXI_MonADC_CONTROL),  // ufix32
                                               .AXI_TVS_1000mV(AXI_TVS_1000mV_sig),  // sfix32
                                               .AXI_TVS_1800mV(AXI_TVS_1800mV_sig),  // sfix32
                                               .AXI_TVS_2500mV(AXI_TVS_2500mV_sig),  // sfix32
                                               .AXI_TVS_tempr(AXI_TVS_tempr_sig),  // sfix32
                                               .AXI_SYS_STATUS(AXI_SYS_STATUS_sig),  // ufix8
                                               .DDR_RESET(DDR_RESET_sig),  // ufix1
                                               .PWR_CONTOL(PWR_CONTOL_sig),  // ufix8
                                               .AXI_PWR_STATUS(AXI_PWR_STATUS_sig),  // ufix8
                                               .XAVIER_SPI2_MISO(XAVIER_SPI2_MISO_sig),  // ufix1
                                               .AXI_PLL_STATUS(AXI_PLL_STATUS_sig),  // ufix8
                                               .PPS_OUT(PPS_OUT_sig),  // ufix1
                                               .AXI_I2S_STATUS(AXI_I2S_STATUS_sig),  // ufix4
                                               .CC_nCS(CC_nCS_sig),  // ufix1
                                               .CC_nRESET(CC_nRESET_sig),  // ufix1
                                               .CC_MOSI(CC_MOSI_sig),  // ufix1
                                               .CC_SCK(CC_SCK_sig),  // ufix1
                                               .CC_M43(CC_M43_sig),  // ufix2
                                               .AXI_CC_SPI_Rd(AXI_CC_SPI_Rd_sig),  // ufix32
                                               .AXI_CC_STATUS(AXI_CC_STATUS_sig),  // ufix32
                                               .CC_LOCKED(CC_LOCKED_sig),  // ufix1
                                               .CC_CLK_SEL(CC_CLK_SEL_sig),  // ufix1
                                               .SysReset_N(SysReset_N_sig),  // ufix1
                                               .axi_wr_m2s_wr_addr(axi_wr_m2s_wr_addr_sig),  // ufix32
                                               .axi_wr_m2s_wr_len(axi_wr_m2s_wr_len_sig),  // ufix8
                                               .axi_wr_m2s_wr_valid(axi_wr_m2s_wr_valid_sig),  // ufix1
                                               .axi_wr_data(axi_wr_data_sig),  // ufix32
                                               .axi_rd_m2s_rd_addr(axi_rd_m2s_rd_addr_sig),  // ufix32
                                               .axi_rd_m2s_rd_len(axi_rd_m2s_rd_len_sig),  // ufix8
                                               .axi_rd_m2s_rd_avalid(axi_rd_m2s_rd_avalid_sig),  // ufix1
                                               .XAVIER_SPI1_MISO(XAVIER_SPI1_MISO_sig),  // ufix1
                                               .AXI_MonADC_STATUS(AXI_MonADC_STATUS_sig),  // ufix32
                                               .AXI_MonADC_SPI_Rd(AXI_MonADC_SPI_Rd_sig),  // ufix32
                                               .AXI_Mon_1V8(AXI_Mon_1V8_sig),  // sfix32
                                               .AXI_Mon_3V3(AXI_Mon_3V3_sig),  // sfix32
                                               .AXI_Mon_CurrentIn(AXI_Mon_CurrentIn_sig),  // sfix32
                                               .AXI_Mon_VoltageIn(AXI_Mon_VoltageIn_sig),  // sfix32
                                               .AXI_Mon_12V(AXI_Mon_12V_sig),  // sfix32
                                               .MonADC_nCS(MonADC_nCS_sig),  // ufix1
                                               .MonADC_SCK(MonADC_SCK_sig),  // ufix1
                                               .MonADC_MOSI(MonADC_MOSI_sig),  // ufix1
                                               .XAVIER_RESET_N(XAVIER_RESET_N_sig),  // ufix1
                                               .XAVIER_SPI1_ENB_MISO(XAVIER_SPI1_ENB_MISO_sig)  // ufix1
                                               );

  assign AXI_TVS_1000mV = AXI_TVS_1000mV_sig;

  assign AXI_TVS_1800mV = AXI_TVS_1800mV_sig;

  assign AXI_TVS_2500mV = AXI_TVS_2500mV_sig;

  assign AXI_TVS_tempr = AXI_TVS_tempr_sig;

  assign AXI_SYS_STATUS = AXI_SYS_STATUS_sig;

  assign DDR_RESET = DDR_RESET_sig;

  assign PWR_CONTOL = PWR_CONTOL_sig;

  assign AXI_PWR_STATUS = AXI_PWR_STATUS_sig;

  assign XAVIER_SPI2_MISO = XAVIER_SPI2_MISO_sig;

  assign AXI_PLL_STATUS = AXI_PLL_STATUS_sig;

  assign PPS_OUT = PPS_OUT_sig;

  assign AXI_I2S_STATUS = AXI_I2S_STATUS_sig;

  assign CC_nCS = CC_nCS_sig;

  assign CC_nRESET = CC_nRESET_sig;

  assign CC_MOSI = CC_MOSI_sig;

  assign CC_SCK = CC_SCK_sig;

  assign CC_M43 = CC_M43_sig;

  assign AXI_CC_SPI_Rd = AXI_CC_SPI_Rd_sig;

  assign AXI_CC_STATUS = AXI_CC_STATUS_sig;

  assign CC_LOCKED = CC_LOCKED_sig;

  assign CC_CLK_SEL = CC_CLK_SEL_sig;

  assign SysReset_N = SysReset_N_sig;

  assign axi_wr_m2s_wr_addr = axi_wr_m2s_wr_addr_sig;

  assign axi_wr_m2s_wr_len = axi_wr_m2s_wr_len_sig;

  assign axi_wr_m2s_wr_valid = axi_wr_m2s_wr_valid_sig;

  assign axi_wr_data = axi_wr_data_sig;

  assign axi_rd_m2s_rd_addr = axi_rd_m2s_rd_addr_sig;

  assign axi_rd_m2s_rd_len = axi_rd_m2s_rd_len_sig;

  assign axi_rd_m2s_rd_avalid = axi_rd_m2s_rd_avalid_sig;

  assign XAVIER_SPI1_MISO = XAVIER_SPI1_MISO_sig;

  assign AXI_MonADC_STATUS = AXI_MonADC_STATUS_sig;

  assign AXI_MonADC_SPI_Rd = AXI_MonADC_SPI_Rd_sig;

  assign AXI_Mon_1V8 = AXI_Mon_1V8_sig;

  assign AXI_Mon_3V3 = AXI_Mon_3V3_sig;

  assign AXI_Mon_CurrentIn = AXI_Mon_CurrentIn_sig;

  assign AXI_Mon_VoltageIn = AXI_Mon_VoltageIn_sig;

  assign AXI_Mon_12V = AXI_Mon_12V_sig;

  assign MonADC_nCS = MonADC_nCS_sig;

  assign MonADC_SCK = MonADC_SCK_sig;

  assign MonADC_MOSI = MonADC_MOSI_sig;

  assign XAVIER_RESET_N = XAVIER_RESET_N_sig;

  assign XAVIER_SPI1_ENB_MISO = XAVIER_SPI1_ENB_MISO_sig;

endmodule  // SYSTEM_ip_dut

