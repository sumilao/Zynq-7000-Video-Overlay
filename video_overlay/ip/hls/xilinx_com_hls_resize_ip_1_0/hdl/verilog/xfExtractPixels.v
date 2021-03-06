// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xfExtractPixels (
        ap_ready,
        tmp_buf_0_V_read,
        tmp_buf_1_V_read,
        tmp_buf_2_V_read,
        tmp_buf_3_V_read,
        tmp_buf_4_V_read,
        val1_V_read,
        pos_r,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4
);


output   ap_ready;
input  [23:0] tmp_buf_0_V_read;
input  [23:0] tmp_buf_1_V_read;
input  [23:0] tmp_buf_2_V_read;
input  [23:0] tmp_buf_3_V_read;
input  [23:0] tmp_buf_4_V_read;
input  [23:0] val1_V_read;
input  [3:0] pos_r;
output  [23:0] ap_return_0;
output  [23:0] ap_return_1;
output  [23:0] ap_return_2;
output  [23:0] ap_return_3;
output  [23:0] ap_return_4;

wire   [2:0] tmp_fu_64_p1;
wire   [23:0] tmp_buf_0_V_write_a_fu_68_p10;
wire   [23:0] tmp_buf_1_V_write_a_fu_90_p10;
wire   [23:0] tmp_buf_2_V_write_a_fu_134_p10;
wire   [23:0] tmp_buf_3_V_write_a_fu_156_p10;
wire   [23:0] tmp_buf_4_V_write_a_fu_112_p10;

resize_ip_mux_83_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 24 ),
    .din5_WIDTH( 24 ),
    .din6_WIDTH( 24 ),
    .din7_WIDTH( 24 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 24 ))
resize_ip_mux_83_dEe_U28(
    .din0(val1_V_read),
    .din1(tmp_buf_0_V_read),
    .din2(tmp_buf_0_V_read),
    .din3(tmp_buf_0_V_read),
    .din4(tmp_buf_0_V_read),
    .din5(tmp_buf_0_V_read),
    .din6(tmp_buf_0_V_read),
    .din7(tmp_buf_0_V_read),
    .din8(tmp_fu_64_p1),
    .dout(tmp_buf_0_V_write_a_fu_68_p10)
);

resize_ip_mux_83_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 24 ),
    .din5_WIDTH( 24 ),
    .din6_WIDTH( 24 ),
    .din7_WIDTH( 24 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 24 ))
resize_ip_mux_83_dEe_U29(
    .din0(tmp_buf_1_V_read),
    .din1(val1_V_read),
    .din2(tmp_buf_1_V_read),
    .din3(tmp_buf_1_V_read),
    .din4(tmp_buf_1_V_read),
    .din5(tmp_buf_1_V_read),
    .din6(tmp_buf_1_V_read),
    .din7(tmp_buf_1_V_read),
    .din8(tmp_fu_64_p1),
    .dout(tmp_buf_1_V_write_a_fu_90_p10)
);

resize_ip_mux_83_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 24 ),
    .din5_WIDTH( 24 ),
    .din6_WIDTH( 24 ),
    .din7_WIDTH( 24 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 24 ))
resize_ip_mux_83_dEe_U30(
    .din0(tmp_buf_4_V_read),
    .din1(tmp_buf_4_V_read),
    .din2(tmp_buf_4_V_read),
    .din3(tmp_buf_4_V_read),
    .din4(val1_V_read),
    .din5(val1_V_read),
    .din6(val1_V_read),
    .din7(val1_V_read),
    .din8(tmp_fu_64_p1),
    .dout(tmp_buf_4_V_write_a_fu_112_p10)
);

resize_ip_mux_83_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 24 ),
    .din5_WIDTH( 24 ),
    .din6_WIDTH( 24 ),
    .din7_WIDTH( 24 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 24 ))
resize_ip_mux_83_dEe_U31(
    .din0(tmp_buf_2_V_read),
    .din1(tmp_buf_2_V_read),
    .din2(val1_V_read),
    .din3(tmp_buf_2_V_read),
    .din4(tmp_buf_2_V_read),
    .din5(tmp_buf_2_V_read),
    .din6(tmp_buf_2_V_read),
    .din7(tmp_buf_2_V_read),
    .din8(tmp_fu_64_p1),
    .dout(tmp_buf_2_V_write_a_fu_134_p10)
);

resize_ip_mux_83_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 24 ),
    .din5_WIDTH( 24 ),
    .din6_WIDTH( 24 ),
    .din7_WIDTH( 24 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 24 ))
resize_ip_mux_83_dEe_U32(
    .din0(tmp_buf_3_V_read),
    .din1(tmp_buf_3_V_read),
    .din2(tmp_buf_3_V_read),
    .din3(val1_V_read),
    .din4(tmp_buf_3_V_read),
    .din5(tmp_buf_3_V_read),
    .din6(tmp_buf_3_V_read),
    .din7(tmp_buf_3_V_read),
    .din8(tmp_fu_64_p1),
    .dout(tmp_buf_3_V_write_a_fu_156_p10)
);

assign ap_ready = 1'b1;

assign ap_return_0 = tmp_buf_0_V_write_a_fu_68_p10;

assign ap_return_1 = tmp_buf_1_V_write_a_fu_90_p10;

assign ap_return_2 = tmp_buf_2_V_write_a_fu_134_p10;

assign ap_return_3 = tmp_buf_3_V_write_a_fu_156_p10;

assign ap_return_4 = tmp_buf_4_V_write_a_fu_112_p10;

assign tmp_fu_64_p1 = pos_r[2:0];

endmodule //xfExtractPixels
