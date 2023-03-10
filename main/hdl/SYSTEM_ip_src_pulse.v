// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_pulse.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_pulse
// Source Path: tb_SYSTEM/SYSTEM/AD9545CC/pulse
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_pulse
          (clk,
           reset_x,
           valid,
           rise,
           fall);


  input   clk;
  input   reset_x;
  input   valid;  // ufix1
  output  rise;
  output  fall;


  reg  Delay_out1;  // ufix1
  wire NOT_out1;
  wire AND_out1;
  wire AND1_out1;


  always @(posedge clk or posedge reset_x)
    begin : Delay_process
      if (reset_x == 1'b1) begin
        Delay_out1 <= 1'b0;
      end
      else begin
        Delay_out1 <= valid;
      end
    end


  assign NOT_out1 =  ~ Delay_out1;


  assign AND_out1 = valid & NOT_out1;


  assign rise = AND_out1;

  assign AND1_out1 = 1'b0;



  assign fall = AND1_out1;

endmodule  // SYSTEM_ip_src_pulse

