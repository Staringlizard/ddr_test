`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 08:57:32 PM
// Design Name: 
// Module Name: imp_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module imp_top
  (
   inout [15:0]    ddr3_dq,
   inout [1:0]     ddr3_dqs_n,
   inout [1:0]     ddr3_dqs_p,
   output [14:0]   ddr3_addr,
   output [2:0]    ddr3_ba,
   output          ddr3_ras_n,
   output          ddr3_cas_n,
   output          ddr3_we_n,
   output          ddr3_reset_n,
   output [0:0]    ddr3_ck_p,
   output [0:0]    ddr3_ck_n,
   output [0:0]    ddr3_cke,
   output [1:0]    ddr3_dm,
   output [0:0]    ddr3_odt,
   input           sysclk,
   input           cpu_resetn,
   output [7:0]    led
  );

    wire  clk100;
    wire  clk200;
    wire  locked;
    reg           sys_rst;
    wire           init_calib_complete;
    wire           tg_compare_error;
    reg [31:0] ts;

//    assign sys_rst = ~cpu_resetn;
    assign led[7] = locked;
    assign led[6] = init_calib_complete;
    assign led[5] = ts[25];
    assign led[4] = 1'b0;
    assign led[3] = 1'b0;
    assign led[2] = 1'b0;
    assign led[1] = 1'b0;
    assign led[0] = tg_compare_error;

    reg [31:0] rst_cnt;
    initial rst_cnt = 32'b1;
    always @(posedge clk100) begin
      if(rst_cnt < 32'h0008_0000) begin
        rst_cnt <= rst_cnt + 1;
        sys_rst <= 1'b0;
      end
      else begin
        sys_rst <= 1'b1;
      end
    end

    initial ts = 32'b0;
    always @(posedge clk100) begin
        ts <= ts + 1;
    end


    example_top u_example_top
    (
     .ddr3_dq(ddr3_dq),
     .ddr3_dqs_n(ddr3_dqs_n),
     .ddr3_dqs_p(ddr3_dqs_p),
     .ddr3_addr(ddr3_addr),
     .ddr3_ba(ddr3_ba),
     .ddr3_ras_n(ddr3_ras_n),
     .ddr3_cas_n(ddr3_cas_n),
     .ddr3_we_n(ddr3_we_n),
     .ddr3_reset_n(ddr3_reset_n),
     .ddr3_ck_p(ddr3_ck_p),
     .ddr3_ck_n(ddr3_ck_n),
     .ddr3_cke(ddr3_cke),
     .ddr3_dm(ddr3_dm),
     .ddr3_odt(ddr3_odt),
     .sys_clk_i(clk200),
//     .clk_ref_i(clk200),
     .tg_compare_error(tg_compare_error),
     .init_calib_complete(init_calib_complete),
     .sys_rst(sys_rst)
     );

   clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk100),     // output clk_out1
    .clk_out2(clk200),     // output clk_out1
    // Status and control signals
    .reset(0), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(sysclk));      // input clk_in1


endmodule
