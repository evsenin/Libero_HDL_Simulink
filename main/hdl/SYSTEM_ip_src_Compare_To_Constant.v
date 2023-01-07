// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_Compare_To_Constant.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_Compare_To_Constant
// Source Path: tb_SYSTEM/SYSTEM/AD7173-8-ADC_0/proc/Compare To Constant
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_Compare_To_Constant
          (u,
           y);


  input   [15:0] u;  // ufix16_En16
  output  y;


  wire [15:0] Constant_out1;  // ufix16_En16
  wire Compare_relop1;


  assign Constant_out1 = 16'b0000000000000000;


  assign Compare_relop1 = u == Constant_out1;


  assign y = Compare_relop1;

endmodule  // SYSTEM_ip_src_Compare_To_Constant
