// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_CameraIO\CameraIO_ip_src_Chart.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CameraIO_ip_src_Chart
// Source Path: tb_CameraIO/CameraIO/TCA6424A/sclDeb/Chart
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CameraIO_ip_src_Chart
          (clk,
           reset_x,
           nul,
           one,
           y);

  // Default encoded enumeration values for type state_type_is_Chart
  parameter state_type_is_Chart_IN_NUL = 2'd0, state_type_is_Chart_IN_ONE = 2'd1, state_type_is_Chart_IN_RESET = 2'd2;

  input   clk;
  input   reset_x;
  input   nul;
  input   one;
  output  y;


  reg [1:0] is_Chart;  // uint8
  reg  y_1;
  reg [1:0] is_Chart_next;  // enum type state_type_is_Chart (3 enums)


  always @(posedge clk or posedge reset_x)
    begin : Chart_process
      if (reset_x == 1'b1) begin
        //Entry: CameraIO/TCA6424A/sclDeb/Chart
        //Entry Internal: CameraIO/TCA6424A/sclDeb/Chart
        //Transition
        is_Chart <= state_type_is_Chart_IN_RESET;
        //Entry 'RESET'
      end
      else begin
        is_Chart <= is_Chart_next;
      end
    end

  always @(is_Chart, nul, one) begin
    is_Chart_next = is_Chart;
    //Gateway: CameraIO/TCA6424A/sclDeb/Chart
    //During: CameraIO/TCA6424A/sclDeb/Chart
    case ( is_Chart)
      state_type_is_Chart_IN_NUL :
        begin
          //During 'NUL'
          if (one) begin
            //Transition
            is_Chart_next = state_type_is_Chart_IN_ONE;
            //Entry 'ONE'
            y_1 = 1'b1;
          end
          else begin
            y_1 = 1'b0;
          end
        end
      state_type_is_Chart_IN_ONE :
        begin
          //During 'ONE'
          if (nul) begin
            //Transition
            is_Chart_next = state_type_is_Chart_IN_NUL;
            //Entry 'NUL'
            y_1 = 1'b0;
          end
          else begin
            y_1 = 1'b1;
          end
        end
      default :
        begin
          //case IN_RESET:
          //During 'RESET'
          if (one) begin
            //Transition
            is_Chart_next = state_type_is_Chart_IN_ONE;
            //Entry 'ONE'
            y_1 = 1'b1;
          end
          else if (nul) begin
            //Transition
            is_Chart_next = state_type_is_Chart_IN_NUL;
            //Entry 'NUL'
            y_1 = 1'b0;
          end
          else begin
            y_1 = 1'b1;
          end
        end
    endcase
  end


  assign y = y_1;

endmodule  // CameraIO_ip_src_Chart

