// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_rdfifo_data.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_rdfifo_data
// Source Path: SYSTEM_ip/SYSTEM_ip_axi4/SYSTEM_ip_axi4_module/SYSTEM_ip_rdfifo_data
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_rdfifo_data
          (clk,
           reset_x,
           enb,
           In,
           Push,
           Pop,
           Out,
           Empty,
           AFull);


  input   clk;
  input   reset_x;
  input   enb;
  input   [31:0] In;  // ufix32
  input   Push;  // ufix1
  input   Pop;  // ufix1
  output  [31:0] Out;  // ufix32
  output  Empty;  // ufix1
  output  AFull;  // ufix1


  wire R_x;  // ufix1
  wire cache_wr_en;  // ufix1
  wire out_wr_en;  // ufix1
  wire fwft_wr_en;  // ufix1
  wire R_x_1;  // ufix1
  reg  fifo_valid;  // ufix1
  wire Q_keep;  // ufix1
  reg  out_valid;  // ufix1
  wire fifo_and_out_valid;  // ufix1
  wire R_x_2;  // ufix1
  reg  cache_valid;  // ufix1
  wire Q_keep_1;  // ufix1
  wire relop_relop1;
  wire Q_next;  // ufix1
  wire all_valid;  // ufix1
  wire Full;  // ufix1
  wire fifo_nfull;  // ufix1
  wire fifo_push;  // ufix1
  wire fifo_pop;  // ufix1
  reg [3:0] fifo_front_indx;  // ufix4
  reg [3:0] fifo_front_dir;  // ufix4
  reg [3:0] fifo_back_indx;  // ufix4
  reg [3:0] fifo_back_dir;  // ufix4
  reg [4:0] fifo_sample_count;  // ufix5
  wire [3:0] fifo_front_indx_next;  // ufix4
  wire [3:0] fifo_front_dir_next;  // ufix4
  wire [3:0] fifo_back_indx_next;  // ufix4
  wire [3:0] fifo_back_dir_next;  // ufix4
  wire [4:0] fifo_sample_count_next;  // ufix5
  wire fifo_out3;
  wire fifo_out4;
  wire fifo_write_enable;
  wire fifo_read_enable;
  wire [3:0] fifo_front_indx_temp;  // ufix4
  wire [3:0] fifo_back_indx_temp;  // ufix4
  wire [3:0] w_waddr;  // ufix4
  wire w_we;  // ufix1
  wire [3:0] w_raddr;  // ufix4
  wire Empty_1;  // ufix1
  wire [4:0] Num;  // ufix5
  wire Q_next_1;  // ufix1
  wire int_valid;  // ufix1
  wire Q_keep_2;  // ufix1
  wire Q_next_2;  // ufix1
  wire data_flow;  // ufix1
  wire w_cz;
  wire w_const;  // ufix1
  wire w_mux1;  // ufix1
  reg  w_d1;  // ufix1
  wire [31:0] w_waddr_1;  // ufix32
  reg [31:0] w_d2;  // ufix32
  wire [31:0] w_out;  // ufix32
  reg [31:0] cache_data;  // ufix32
  wire [31:0] data_out_next;  // ufix32
  reg [31:0] Out_1;  // ufix32
  wire [4:0] afull_num;  // ufix5
  wire relop_relop1_1;


  assign R_x =  ~ Pop;



  assign fwft_wr_en = cache_wr_en | out_wr_en;



  assign R_x_1 =  ~ fwft_wr_en;



  assign Q_keep = R_x_1 & fifo_valid;



  assign fifo_and_out_valid = fifo_valid & out_valid;



  assign R_x_2 =  ~ out_wr_en;



  assign Q_keep_1 = R_x_2 & cache_valid;



  assign relop_relop1 = cache_valid == out_wr_en;



  assign cache_wr_en = relop_relop1 & fifo_valid;



  assign Q_next = cache_wr_en | Q_keep_1;



  always @(posedge clk or posedge reset_x)
    begin : Q_reg_process
      if (reset_x == 1'b1) begin
        cache_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          cache_valid <= Q_next;
        end
      end
    end



  assign all_valid = cache_valid & fifo_and_out_valid;



  assign fifo_nfull =  ~ Full;



  // us2: Upsample by 1, Sample offset 0 
  assign fifo_push = Push & fifo_nfull;



  // FIFO logic controller
  always @(posedge clk or posedge reset_x)
    begin : fifo_process
      if (reset_x == 1'b1) begin
        fifo_front_indx <= 4'b0000;
        fifo_front_dir <= 4'b0001;
        fifo_back_indx <= 4'b0000;
        fifo_back_dir <= 4'b0001;
        fifo_sample_count <= 5'b00000;
      end
      else begin
        if (enb) begin
          fifo_front_indx <= fifo_front_indx_next;
          fifo_front_dir <= fifo_front_dir_next;
          fifo_back_indx <= fifo_back_indx_next;
          fifo_back_dir <= fifo_back_dir_next;
          fifo_sample_count <= fifo_sample_count_next;
        end
      end
    end

  assign fifo_out4 = fifo_sample_count == 5'b10000;
  assign fifo_out3 = fifo_sample_count == 5'b00000;
  assign fifo_write_enable = fifo_push && (fifo_pop || ( ! fifo_out4));
  assign fifo_read_enable = fifo_pop && ( ! fifo_out3);
  assign fifo_front_indx_temp = (fifo_read_enable ? fifo_front_indx + fifo_front_dir :
              fifo_front_indx);
  assign fifo_front_dir_next = (fifo_front_indx_temp == 4'b1111 ? 4'b0001 :
              4'b0001);
  assign fifo_back_indx_temp = (fifo_write_enable ? fifo_back_indx + fifo_back_dir :
              fifo_back_indx);
  assign fifo_back_dir_next = (fifo_back_indx_temp == 4'b1111 ? 4'b0001 :
              4'b0001);
  assign fifo_sample_count_next = (fifo_write_enable && ( ! fifo_read_enable) ? fifo_sample_count + 5'b00001 :
              (( ! fifo_write_enable) && fifo_read_enable ? fifo_sample_count + 5'b11111 :
              fifo_sample_count));
  assign w_waddr = fifo_back_indx;
  assign w_we = fifo_write_enable;
  assign w_raddr = fifo_front_indx;
  assign Empty_1 = fifo_out3;
  assign Full = fifo_out4;
  assign Num = fifo_sample_count;
  assign fifo_front_indx_next = fifo_front_indx_temp;
  assign fifo_back_indx_next = fifo_back_indx_temp;



  // us3: Upsample by 1, Sample offset 0 
  assign fifo_pop =  ~ (Empty_1 | all_valid);



  assign Q_next_1 = fifo_pop | Q_keep;



  always @(posedge clk or posedge reset_x)
    begin : Q_reg_1_process
      if (reset_x == 1'b1) begin
        fifo_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          fifo_valid <= Q_next_1;
        end
      end
    end



  assign int_valid = fifo_valid | cache_valid;



  assign Q_keep_2 = R_x & out_valid;



  assign Q_next_2 = out_wr_en | Q_keep_2;



  always @(posedge clk or posedge reset_x)
    begin : Q_reg_2_process
      if (reset_x == 1'b1) begin
        out_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          out_valid <= Q_next_2;
        end
      end
    end



  assign Empty =  ~ out_valid;



  assign data_flow = Pop | Empty;



  assign out_wr_en = data_flow & int_valid;



  assign w_cz = Num > 5'b00000;



  assign w_const = 1'b0;



  assign w_mux1 = (w_cz == 1'b0 ? w_const :
              fifo_pop);



  always @(posedge clk or posedge reset_x)
    begin : f_d1_process
      if (reset_x == 1'b1) begin
        w_d1 <= 1'b0;
      end
      else begin
        if (enb) begin
          w_d1 <= w_mux1;
        end
      end
    end



  // us1: Upsample by 1, Sample offset 0 
  SYSTEM_ip_SimpleDualPortRAM_generic #(.AddrWidth(4),
                                        .DataWidth(32)
                                        )
                                      u_SYSTEM_ip_rdfifo_data_classic_ram (.clk(clk),
                                                                           .enb(enb),
                                                                           .wr_din(In),
                                                                           .wr_addr(w_waddr),
                                                                           .wr_en(w_we),  // ufix1
                                                                           .rd_addr(w_raddr),
                                                                           .rd_dout(w_waddr_1)
                                                                           );

  always @(posedge clk or posedge reset_x)
    begin : f_d2_process
      if (reset_x == 1'b1) begin
        w_d2 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (enb && w_d1) begin
          w_d2 <= w_waddr_1;
        end
      end
    end



  assign w_out = (w_d1 == 1'b0 ? w_d2 :
              w_waddr_1);



  always @(posedge clk or posedge reset_x)
    begin : cache_data_reg_process
      if (reset_x == 1'b1) begin
        cache_data <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (enb && cache_wr_en) begin
          cache_data <= w_out;
        end
      end
    end



  assign data_out_next = (cache_valid == 1'b0 ? w_out :
              cache_data);



  always @(posedge clk or posedge reset_x)
    begin : out_data_reg_process
      if (reset_x == 1'b1) begin
        Out_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (enb && out_wr_en) begin
          Out_1 <= data_out_next;
        end
      end
    end



  assign afull_num = 5'b01110;



  assign relop_relop1_1 = Num >= afull_num;



  assign AFull = relop_relop1_1;

  assign Out = Out_1;

endmodule  // SYSTEM_ip_rdfifo_data

