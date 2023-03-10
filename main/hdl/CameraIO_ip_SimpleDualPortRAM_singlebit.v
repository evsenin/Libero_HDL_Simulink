// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_CameraIO\CameraIO_ip_SimpleDualPortRAM_singlebit.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CameraIO_ip_SimpleDualPortRAM_singlebit
// Source Path: CameraIO_ip/CameraIO_ip_axi4/CameraIO_ip_axi4_module/CameraIO_ip_rdfifo_last/CameraIO_ip_rdfifo_last_classic/CameraIO_ip_SimpleDualPortRAM_singlebit
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CameraIO_ip_SimpleDualPortRAM_singlebit
          (clk,
           enb,
           wr_din,
           wr_addr,
           wr_en,
           rd_addr,
           rd_dout);

  parameter integer AddrWidth  = 1;
  parameter integer DataWidth  = 1;

  input   clk;
  input   enb;
  input   wr_din;  // ufix1
  input   [AddrWidth - 1:0] wr_addr;  // parameterized width
  input   wr_en;  // ufix1
  input   [AddrWidth - 1:0] rd_addr;  // parameterized width
  output  rd_dout;  // ufix1


  reg   ram [2**AddrWidth - 1:0];
  reg   data_int;


  always @(posedge clk)
    begin : CameraIO_ip_SimpleDualPortRAM_singlebit_process
      if (enb == 1'b1) begin
        if (wr_en == 1'b1) begin
          ram[wr_addr] <= wr_din;
        end
        data_int <= ram[rd_addr];
      end
    end

  assign rd_dout = data_int;

endmodule  // CameraIO_ip_SimpleDualPortRAM_singlebit

