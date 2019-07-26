// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_accel (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        p_src_rows_dout,
        p_src_rows_empty_n,
        p_src_rows_read,
        p_src_cols_dout,
        p_src_cols_empty_n,
        p_src_cols_read,
        p_src_data_V_dout,
        p_src_data_V_empty_n,
        p_src_data_V_read,
        p_dstgx_rows_dout,
        p_dstgx_rows_empty_n,
        p_dstgx_rows_read,
        p_dstgx_cols_dout,
        p_dstgx_cols_empty_n,
        p_dstgx_cols_read,
        p_dstgx_data_V_din,
        p_dstgx_data_V_full_n,
        p_dstgx_data_V_write,
        p_dstgy_cols_dout,
        p_dstgy_cols_empty_n,
        p_dstgy_cols_read,
        p_dstgy_data_V_din,
        p_dstgy_data_V_full_n,
        p_dstgy_data_V_write,
        p_dstgx_rows_out_din,
        p_dstgx_rows_out_full_n,
        p_dstgx_rows_out_write,
        p_dstgx_cols_out_din,
        p_dstgx_cols_out_full_n,
        p_dstgx_cols_out_write,
        p_dstgy_cols_out_din,
        p_dstgy_cols_out_full_n,
        p_dstgy_cols_out_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] p_src_rows_dout;
input   p_src_rows_empty_n;
output   p_src_rows_read;
input  [31:0] p_src_cols_dout;
input   p_src_cols_empty_n;
output   p_src_cols_read;
input  [7:0] p_src_data_V_dout;
input   p_src_data_V_empty_n;
output   p_src_data_V_read;
input  [31:0] p_dstgx_rows_dout;
input   p_dstgx_rows_empty_n;
output   p_dstgx_rows_read;
input  [31:0] p_dstgx_cols_dout;
input   p_dstgx_cols_empty_n;
output   p_dstgx_cols_read;
output  [7:0] p_dstgx_data_V_din;
input   p_dstgx_data_V_full_n;
output   p_dstgx_data_V_write;
input  [31:0] p_dstgy_cols_dout;
input   p_dstgy_cols_empty_n;
output   p_dstgy_cols_read;
output  [7:0] p_dstgy_data_V_din;
input   p_dstgy_data_V_full_n;
output   p_dstgy_data_V_write;
output  [31:0] p_dstgx_rows_out_din;
input   p_dstgx_rows_out_full_n;
output   p_dstgx_rows_out_write;
output  [31:0] p_dstgx_cols_out_din;
input   p_dstgx_cols_out_full_n;
output   p_dstgx_cols_out_write;
output  [31:0] p_dstgy_cols_out_din;
input   p_dstgy_cols_out_full_n;
output   p_dstgy_cols_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg p_src_rows_read;
reg p_src_cols_read;
reg p_src_data_V_read;
reg p_dstgx_rows_read;
reg p_dstgx_cols_read;
reg p_dstgx_data_V_write;
reg p_dstgy_cols_read;
reg p_dstgy_data_V_write;
reg p_dstgx_rows_out_write;
reg p_dstgx_cols_out_write;
reg p_dstgy_cols_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    p_src_rows_blk_n;
reg    p_src_cols_blk_n;
reg    p_dstgx_rows_blk_n;
reg    p_dstgx_cols_blk_n;
reg    p_dstgy_cols_blk_n;
reg    p_dstgx_rows_out_blk_n;
reg    p_dstgx_cols_out_blk_n;
reg    p_dstgy_cols_out_blk_n;
reg   [31:0] p_dstgx_rows_read_reg_114;
reg    ap_block_state1;
reg   [31:0] p_dstgx_cols_read_reg_119;
reg   [31:0] p_dstgy_cols_read_reg_124;
reg   [31:0] p_src_rows_read_reg_129;
reg   [31:0] p_src_cols_read_reg_134;
wire    grp_Sobel_fu_94_p_src_mat_data_V_read;
wire   [7:0] grp_Sobel_fu_94_p_dst_matx_data_V_din;
wire    grp_Sobel_fu_94_p_dst_matx_data_V_write;
wire   [7:0] grp_Sobel_fu_94_p_dst_maty_data_V_din;
wire    grp_Sobel_fu_94_p_dst_maty_data_V_write;
wire    grp_Sobel_fu_94_ap_done;
wire    grp_Sobel_fu_94_ap_start;
wire    grp_Sobel_fu_94_ap_ready;
wire    grp_Sobel_fu_94_ap_idle;
reg    grp_Sobel_fu_94_ap_continue;
reg    grp_Sobel_fu_94_ap_start_reg;
reg    ap_block_state1_ignore_call19;
wire    ap_CS_fsm_state2;
wire    ap_sync_grp_Sobel_fu_94_ap_ready;
wire    ap_sync_grp_Sobel_fu_94_ap_done;
reg    ap_block_state2_on_subcall_done;
reg    ap_sync_reg_grp_Sobel_fu_94_ap_ready;
reg    ap_sync_reg_grp_Sobel_fu_94_ap_done;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_Sobel_fu_94_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_Sobel_fu_94_ap_ready = 1'b0;
#0 ap_sync_reg_grp_Sobel_fu_94_ap_done = 1'b0;
end

Sobel grp_Sobel_fu_94(
    .p_src_mat_rows_read(p_src_rows_read_reg_129),
    .p_src_mat_cols_read(p_src_cols_read_reg_134),
    .p_src_mat_data_V_dout(p_src_data_V_dout),
    .p_src_mat_data_V_empty_n(p_src_data_V_empty_n),
    .p_src_mat_data_V_read(grp_Sobel_fu_94_p_src_mat_data_V_read),
    .p_dst_matx_rows_read(p_dstgx_rows_read_reg_114),
    .p_dst_matx_cols_read(p_dstgx_cols_read_reg_119),
    .p_dst_matx_data_V_din(grp_Sobel_fu_94_p_dst_matx_data_V_din),
    .p_dst_matx_data_V_full_n(p_dstgx_data_V_full_n),
    .p_dst_matx_data_V_write(grp_Sobel_fu_94_p_dst_matx_data_V_write),
    .p_dst_maty_cols_read(p_dstgy_cols_read_reg_124),
    .p_dst_maty_data_V_din(grp_Sobel_fu_94_p_dst_maty_data_V_din),
    .p_dst_maty_data_V_full_n(p_dstgy_data_V_full_n),
    .p_dst_maty_data_V_write(grp_Sobel_fu_94_p_dst_maty_data_V_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_src_mat_rows_read_ap_vld(1'b1),
    .p_src_mat_cols_read_ap_vld(1'b1),
    .p_dst_matx_rows_read_ap_vld(1'b1),
    .p_dst_matx_cols_read_ap_vld(1'b1),
    .p_dst_maty_cols_read_ap_vld(1'b1),
    .ap_done(grp_Sobel_fu_94_ap_done),
    .ap_start(grp_Sobel_fu_94_ap_start),
    .ap_ready(grp_Sobel_fu_94_ap_ready),
    .ap_idle(grp_Sobel_fu_94_ap_idle),
    .ap_continue(grp_Sobel_fu_94_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_Sobel_fu_94_ap_done <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_sync_reg_grp_Sobel_fu_94_ap_done <= 1'b0;
        end else if ((grp_Sobel_fu_94_ap_done == 1'b1)) begin
            ap_sync_reg_grp_Sobel_fu_94_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_Sobel_fu_94_ap_ready <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_sync_reg_grp_Sobel_fu_94_ap_ready <= 1'b0;
        end else if ((grp_Sobel_fu_94_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_Sobel_fu_94_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Sobel_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if (((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((ap_sync_grp_Sobel_fu_94_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)))) begin
            grp_Sobel_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_Sobel_fu_94_ap_ready == 1'b1)) begin
            grp_Sobel_fu_94_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_cols_read_reg_119 <= p_dstgx_cols_dout;
        p_dstgx_rows_read_reg_114 <= p_dstgx_rows_dout;
        p_dstgy_cols_read_reg_124 <= p_dstgy_cols_dout;
        p_src_cols_read_reg_134 <= p_src_cols_dout;
        p_src_rows_read_reg_129 <= p_src_rows_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        grp_Sobel_fu_94_ap_continue = 1'b1;
    end else begin
        grp_Sobel_fu_94_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_cols_blk_n = p_dstgx_cols_empty_n;
    end else begin
        p_dstgx_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_cols_out_blk_n = p_dstgx_cols_out_full_n;
    end else begin
        p_dstgx_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_cols_out_write = 1'b1;
    end else begin
        p_dstgx_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_cols_read = 1'b1;
    end else begin
        p_dstgx_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_dstgx_data_V_write = grp_Sobel_fu_94_p_dst_matx_data_V_write;
    end else begin
        p_dstgx_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_rows_blk_n = p_dstgx_rows_empty_n;
    end else begin
        p_dstgx_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_rows_out_blk_n = p_dstgx_rows_out_full_n;
    end else begin
        p_dstgx_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_rows_out_write = 1'b1;
    end else begin
        p_dstgx_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgx_rows_read = 1'b1;
    end else begin
        p_dstgx_rows_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgy_cols_blk_n = p_dstgy_cols_empty_n;
    end else begin
        p_dstgy_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgy_cols_out_blk_n = p_dstgy_cols_out_full_n;
    end else begin
        p_dstgy_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgy_cols_out_write = 1'b1;
    end else begin
        p_dstgy_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dstgy_cols_read = 1'b1;
    end else begin
        p_dstgy_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_dstgy_data_V_write = grp_Sobel_fu_94_p_dst_maty_data_V_write;
    end else begin
        p_dstgy_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_blk_n = p_src_cols_empty_n;
    end else begin
        p_src_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_read = 1'b1;
    end else begin
        p_src_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_src_data_V_read = grp_Sobel_fu_94_p_src_mat_data_V_read;
    end else begin
        p_src_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_blk_n = p_src_rows_empty_n;
    end else begin
        p_src_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_read = 1'b1;
    end else begin
        p_src_rows_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call19 = ((p_dstgy_cols_out_full_n == 1'b0) | (real_start == 1'b0) | (p_dstgx_cols_out_full_n == 1'b0) | (p_dstgx_rows_out_full_n == 1'b0) | (p_dstgy_cols_empty_n == 1'b0) | (p_dstgx_cols_empty_n == 1'b0) | (p_dstgx_rows_empty_n == 1'b0) | (p_src_cols_empty_n == 1'b0) | (p_src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_grp_Sobel_fu_94_ap_ready & ap_sync_grp_Sobel_fu_94_ap_done) == 1'b0);
end

assign ap_ready = internal_ap_ready;

assign ap_sync_grp_Sobel_fu_94_ap_done = (grp_Sobel_fu_94_ap_done | ap_sync_reg_grp_Sobel_fu_94_ap_done);

assign ap_sync_grp_Sobel_fu_94_ap_ready = (grp_Sobel_fu_94_ap_ready | ap_sync_reg_grp_Sobel_fu_94_ap_ready);

assign grp_Sobel_fu_94_ap_start = grp_Sobel_fu_94_ap_start_reg;

assign p_dstgx_cols_out_din = p_dstgx_cols_dout;

assign p_dstgx_data_V_din = grp_Sobel_fu_94_p_dst_matx_data_V_din;

assign p_dstgx_rows_out_din = p_dstgx_rows_dout;

assign p_dstgy_cols_out_din = p_dstgy_cols_dout;

assign p_dstgy_data_V_din = grp_Sobel_fu_94_p_dst_maty_data_V_din;

assign start_out = real_start;

endmodule //sobel_accel
