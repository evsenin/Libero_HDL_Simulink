// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_CameraIO\CameraIO_ip_src_TCA6424A.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CameraIO_ip_src_TCA6424A
// Source Path: tb_CameraIO/CameraIO/TCA6424A
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CameraIO_ip_src_TCA6424A
          (clk,
           reset_x,
           sci,
           sdi,
           nRST,
           sco,
           sdo,
           OutPort);


  input   clk;
  input   reset_x;
  input   sci;
  input   sdi;
  input   nRST;
  output  sco;
  output  sdo;  // ufix1
  output  [23:0] OutPort;  // ufix24


  wire Constant1_out1;
  wire y;
  wire Data_Type_Conversion2_out1;  // ufix1
  wire y_1;
  wire Data_Type_Conversion3_out1;  // ufix1
  wire [7:0] Constant3_out1;  // uint8
  wire [6:0] Constant_out1;  // ufix7
  wire i2c_slave_serializer_out1;  // ufix1
  wire [7:0] i2c_slave_serializer_out2;  // uint8
  wire [7:0] i2c_slave_serializer_out3;  // uint8
  wire i2c_slave_serializer_out4;  // ufix1
  wire [7:0] bitMask_for_Bitwise_AND;  // uint8
  wire [7:0] Bitwise_AND_out1;  // uint8
  wire Compare_To_Constant_out1;
  wire AND_out1;
  reg [7:0] Unit_Delay_Enabled_Synchronous_out1;  // uint8
  wire Compare_To_Constant1_out1;
  wire AND1_out1;
  reg [7:0] Unit_Delay_Enabled_Synchronous1_out1;  // uint8
  wire Compare_To_Constant2_out1;
  wire AND2_out1;
  wire NOT1_out1;
  reg [7:0] Unit_Delay_Enabled_Synchronous2_out1;  // uint8
  wire [23:0] y_2;  // ufix24
  reg [23:0] Unit_Delay_Resettable_Synchronous_out1;  // ufix24

  // https://www.ti.com/lit/ds/symlink/tca6424a.pdf


  assign Constant1_out1 = 1'b1;


  assign sco = Constant1_out1;

  CameraIO_ip_src_sclDeb u_sclDeb (.clk(clk),
                                   .reset_x(reset_x),
                                   .inp(sci),
                                   .out(y)
                                   );
  assign Data_Type_Conversion2_out1 = y;


  CameraIO_ip_src_sdaDeb u_sdaDeb (.clk(clk),
                                   .reset_x(reset_x),
                                   .inp(sdi),
                                   .out(y_1)
                                   );
  assign Data_Type_Conversion3_out1 = y_1;


  assign Constant3_out1 = 8'b11111111;


  assign Constant_out1 = 7'b0100010;


  CameraIO_ip_src_i2c_slave_serializer u_i2c_slave_serializer (.clk(clk),
                                                               .reset_x(reset_x),
                                                               .scl(Data_Type_Conversion2_out1),  // ufix1
                                                               .sdaIn(Data_Type_Conversion3_out1),  // ufix1
                                                               .dataIn(Constant3_out1),  // uint8
                                                               .I2C_ADDRESS(Constant_out1),  // ufix7
                                                               .sdaOut(i2c_slave_serializer_out1),  // ufix1
                                                               .dataOut(i2c_slave_serializer_out2),  // uint8
                                                               .regAddr(i2c_slave_serializer_out3),  // uint8
                                                               .writeEn(i2c_slave_serializer_out4)  // ufix1
                                                               );
  assign sdo = i2c_slave_serializer_out1;

  assign bitMask_for_Bitwise_AND = 8'b01111111;



  assign Bitwise_AND_out1 = i2c_slave_serializer_out3 & bitMask_for_Bitwise_AND;


  assign Compare_To_Constant_out1 = Bitwise_AND_out1 == 8'b00000110;


  assign AND_out1 = Compare_To_Constant_out1 & i2c_slave_serializer_out4;


  always @(posedge clk or posedge reset_x)
    begin : Unit_Delay_Enabled_Synchronous_process
      if (reset_x == 1'b1) begin
        Unit_Delay_Enabled_Synchronous_out1 <= 8'b11111111;
      end
      else begin
        if (AND_out1) begin
          Unit_Delay_Enabled_Synchronous_out1 <= i2c_slave_serializer_out2;
        end
      end
    end


  assign Compare_To_Constant1_out1 = Bitwise_AND_out1 == 8'b00000101;


  assign AND1_out1 = Compare_To_Constant1_out1 & i2c_slave_serializer_out4;


  always @(posedge clk or posedge reset_x)
    begin : Unit_Delay_Enabled_Synchronous1_process
      if (reset_x == 1'b1) begin
        Unit_Delay_Enabled_Synchronous1_out1 <= 8'b11111111;
      end
      else begin
        if (AND1_out1) begin
          Unit_Delay_Enabled_Synchronous1_out1 <= i2c_slave_serializer_out2;
        end
      end
    end


  assign Compare_To_Constant2_out1 = Bitwise_AND_out1 == 8'b00000100;


  assign AND2_out1 = Compare_To_Constant2_out1 & i2c_slave_serializer_out4;


  assign NOT1_out1 =  ~ nRST;


  always @(posedge clk or posedge reset_x)
    begin : Unit_Delay_Enabled_Synchronous2_process
      if (reset_x == 1'b1) begin
        Unit_Delay_Enabled_Synchronous2_out1 <= 8'b11111111;
      end
      else begin
        if (AND2_out1) begin
          Unit_Delay_Enabled_Synchronous2_out1 <= i2c_slave_serializer_out2;
        end
      end
    end


  assign y_2 = {Unit_Delay_Enabled_Synchronous_out1, Unit_Delay_Enabled_Synchronous1_out1, Unit_Delay_Enabled_Synchronous2_out1};


  always @(posedge clk or posedge reset_x)
    begin : Unit_Delay_Resettable_Synchronous_process
      if (reset_x == 1'b1) begin
        Unit_Delay_Resettable_Synchronous_out1 <= 24'b000000000000000000000001;
      end
      else begin
        if (NOT1_out1 == 1'b1) begin
          Unit_Delay_Resettable_Synchronous_out1 <= 24'b000000000000000000000001;
        end
        else begin
          Unit_Delay_Resettable_Synchronous_out1 <= y_2;
        end
      end
    end


  assign OutPort = Unit_Delay_Resettable_Synchronous_out1;

endmodule  // CameraIO_ip_src_TCA6424A

