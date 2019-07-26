// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Inverse (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        N_read,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] x;
input  [7:0] N_read;
output  [31:0] ap_return_0;
output  [7:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return_0;
reg[7:0] ap_return_1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] xf_division_lut_address0;
reg    xf_division_lut_ce0;
wire   [15:0] xf_division_lut_q0;
wire   [3:0] tmpx_fu_254_p4;
reg   [3:0] tmpx_reg_558;
wire   [3:0] tmpx_4_fu_264_p4;
reg   [3:0] tmpx_4_reg_563;
wire   [3:0] tmpx_5_fu_274_p4;
reg   [3:0] tmpx_5_reg_568;
wire   [3:0] tmpx_6_fu_284_p1;
reg   [3:0] tmpx_6_reg_573;
wire   [0:0] tmp_8_fu_288_p2;
reg   [0:0] tmp_8_reg_578;
wire   [0:0] tmp_9_fu_294_p2;
reg   [0:0] tmp_9_reg_582;
wire   [0:0] tmp_10_fu_300_p2;
reg   [0:0] tmp_10_reg_586;
wire   [0:0] tmp_11_fu_306_p2;
reg   [0:0] tmp_11_reg_590;
wire   [2:0] pos_fu_320_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] B_L_fu_355_p2;
reg   [4:0] B_L_reg_606;
wire    ap_CS_fsm_state3;
wire   [4:0] tmp_33_fu_361_p2;
reg   [4:0] tmp_33_reg_612;
wire   [2:0] pos_4_fu_375_p2;
wire    ap_CS_fsm_state4;
wire   [2:0] pos_5_fu_410_p2;
wire    ap_CS_fsm_state5;
wire   [2:0] pos_7_fu_445_p2;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg   [2:0] tmp1_reg_111;
wire   [0:0] tmp_fu_312_p3;
wire   [0:0] tmp_17_fu_341_p2;
reg   [2:0] pos_6_ph1_reg_122;
reg   [2:0] pos_6_ph2_reg_133;
wire   [0:0] tmp_23_fu_396_p2;
wire   [0:0] tmp_133_fu_367_p3;
reg   [2:0] pos_6_ph3_reg_144;
wire   [0:0] tmp_31_fu_431_p2;
wire   [0:0] tmp_135_fu_402_p3;
reg   [2:0] pos_6_ph_reg_155;
wire   [0:0] tmp_27_fu_466_p2;
wire   [0:0] tmp_134_fu_437_p3;
reg   [2:0] ap_phi_mux_pos_6_phi_fu_169_p8;
reg   [3:0] ap_phi_mux_block_2_phi_fu_186_p8;
reg   [2:0] tmp_1_reg_200;
reg   [2:0] tmp_2_reg_211;
reg   [2:0] tmp_3_reg_222;
wire   [7:0] N_cast_fu_526_p1;
reg   [7:0] ap_phi_mux_N_write_assign_phi_fu_236_p4;
reg   [7:0] N_write_assign_reg_233;
wire    ap_CS_fsm_state8;
reg   [15:0] ap_phi_mux_p_0_in_phi_fu_246_p4;
reg   [15:0] p_0_in_reg_242;
wire   [63:0] tmp_35_fu_516_p1;
wire   [2:0] tmp_15_fu_326_p2;
wire   [3:0] tmp_18_cast_fu_332_p1;
wire   [3:0] tmp_16_fu_336_p2;
wire   [4:0] pos_6_cast_fu_347_p1;
wire   [4:0] block_2_cast_fu_351_p1;
wire   [2:0] tmp_21_fu_381_p2;
wire   [3:0] tmp_23_cast_fu_387_p1;
wire   [3:0] tmp_22_fu_391_p2;
wire   [2:0] tmp_29_fu_416_p2;
wire   [3:0] tmp_30_cast_fu_422_p1;
wire   [3:0] tmp_30_fu_426_p2;
wire   [2:0] tmp_25_fu_451_p2;
wire   [3:0] tmp_27_cast_fu_457_p1;
wire   [3:0] tmp_26_fu_461_p2;
wire   [14:0] tmp_140_fu_477_p1;
wire   [14:0] tmp_38_cast_cast_fu_480_p1;
wire   [14:0] tmp_34_fu_483_p2;
wire   [0:0] tmp_32_fu_472_p2;
wire   [10:0] tmp_36_fu_489_p4;
wire   [10:0] tmp_37_fu_498_p4;
wire   [10:0] index_fu_508_p3;
wire   [4:0] N_fu_521_p2;
wire   [31:0] val_fu_531_p1;
reg   [31:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [7:0] ap_NS_fsm;
reg    ap_condition_171;
reg    ap_condition_174;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 8'd0;
end

Inverse_xf_divisicud #(
    .DataWidth( 16 ),
    .AddressRange( 2049 ),
    .AddressWidth( 12 ))
xf_division_lut_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(xf_division_lut_address0),
    .ce0(xf_division_lut_ce0),
    .q0(xf_division_lut_q0)
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
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
        ap_return_0_preg[5] <= 1'b0;
        ap_return_0_preg[6] <= 1'b0;
        ap_return_0_preg[7] <= 1'b0;
        ap_return_0_preg[8] <= 1'b0;
        ap_return_0_preg[9] <= 1'b0;
        ap_return_0_preg[10] <= 1'b0;
        ap_return_0_preg[11] <= 1'b0;
        ap_return_0_preg[12] <= 1'b0;
        ap_return_0_preg[13] <= 1'b0;
        ap_return_0_preg[14] <= 1'b0;
        ap_return_0_preg[15] <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
                        ap_return_0_preg[15 : 0] <= val_fu_531_p1[15 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_return_1_preg <= ap_phi_mux_N_write_assign_phi_fu_236_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_8_fu_288_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        N_write_assign_reg_233 <= N_read;
    end else if (((tmp_8_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        N_write_assign_reg_233 <= N_cast_fu_526_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_8_fu_288_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_0_in_reg_242 <= 16'd65535;
    end else if (((tmp_8_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        p_0_in_reg_242 <= xf_division_lut_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((tmp_fu_312_p3 == 1'd1)) begin
            pos_6_ph1_reg_122 <= 3'd0;
        end else if (((tmp_17_fu_341_p2 == 1'd0) & (tmp_fu_312_p3 == 1'd0))) begin
            pos_6_ph1_reg_122 <= pos_fu_320_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        if ((tmp_133_fu_367_p3 == 1'd1)) begin
            pos_6_ph2_reg_133 <= 3'd0;
        end else if (((tmp_133_fu_367_p3 == 1'd0) & (tmp_23_fu_396_p2 == 1'd0))) begin
            pos_6_ph2_reg_133 <= pos_4_fu_375_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((tmp_135_fu_402_p3 == 1'd1)) begin
            pos_6_ph3_reg_144 <= 3'd0;
        end else if (((tmp_135_fu_402_p3 == 1'd0) & (tmp_31_fu_431_p2 == 1'd0))) begin
            pos_6_ph3_reg_144 <= pos_5_fu_410_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((tmp_134_fu_437_p3 == 1'd1)) begin
            pos_6_ph_reg_155 <= 3'd0;
        end else if (((tmp_134_fu_437_p3 == 1'd0) & (tmp_27_fu_466_p2 == 1'd0))) begin
            pos_6_ph_reg_155 <= pos_7_fu_445_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_294_p2 == 1'd0) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp1_reg_111 <= 3'd0;
    end else if (((tmp_17_fu_341_p2 == 1'd1) & (tmp_fu_312_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp1_reg_111 <= pos_fu_320_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_300_p2 == 1'd0) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_1_reg_200 <= 3'd0;
    end else if (((tmp_23_fu_396_p2 == 1'd1) & (tmp_133_fu_367_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_1_reg_200 <= pos_4_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_300_p2 == 1'd1) & (tmp_11_fu_306_p2 == 1'd0) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_2_reg_211 <= 3'd0;
    end else if (((tmp_31_fu_431_p2 == 1'd1) & (tmp_135_fu_402_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_2_reg_211 <= pos_5_fu_410_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_306_p2 == 1'd1) & (tmp_10_fu_300_p2 == 1'd1) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_3_reg_222 <= 3'd0;
    end else if (((tmp_27_fu_466_p2 == 1'd1) & (tmp_134_fu_437_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_3_reg_222 <= pos_7_fu_445_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_L_reg_606 <= B_L_fu_355_p2;
        tmp_33_reg_612 <= tmp_33_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_10_reg_586 <= tmp_10_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_300_p2 == 1'd1) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_11_reg_590 <= tmp_11_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_8_reg_578 <= tmp_8_fu_288_p2;
        tmpx_4_reg_563 <= {{x[11:8]}};
        tmpx_5_reg_568 <= {{x[7:4]}};
        tmpx_6_reg_573 <= tmpx_6_fu_284_p1;
        tmpx_reg_558 <= {{x[15:12]}};
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_9_reg_582 <= tmp_9_fu_294_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_8_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_phi_mux_N_write_assign_phi_fu_236_p4 = N_cast_fu_526_p1;
    end else begin
        ap_phi_mux_N_write_assign_phi_fu_236_p4 = N_write_assign_reg_233;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((tmp_9_reg_582 == 1'd0)) begin
            ap_phi_mux_block_2_phi_fu_186_p8 = 4'd0;
        end else if (((tmp_10_reg_586 == 1'd0) & (tmp_9_reg_582 == 1'd1))) begin
            ap_phi_mux_block_2_phi_fu_186_p8 = 4'd4;
        end else if ((1'b1 == ap_condition_174)) begin
            ap_phi_mux_block_2_phi_fu_186_p8 = 4'd8;
        end else if ((1'b1 == ap_condition_171)) begin
            ap_phi_mux_block_2_phi_fu_186_p8 = 4'd12;
        end else begin
            ap_phi_mux_block_2_phi_fu_186_p8 = 'bx;
        end
    end else begin
        ap_phi_mux_block_2_phi_fu_186_p8 = 'bx;
    end
end

always @ (*) begin
    if (((tmp_8_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_phi_mux_p_0_in_phi_fu_246_p4 = xf_division_lut_q0;
    end else begin
        ap_phi_mux_p_0_in_phi_fu_246_p4 = p_0_in_reg_242;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((tmp_9_reg_582 == 1'd0)) begin
            ap_phi_mux_pos_6_phi_fu_169_p8 = pos_6_ph1_reg_122;
        end else if (((tmp_10_reg_586 == 1'd0) & (tmp_9_reg_582 == 1'd1))) begin
            ap_phi_mux_pos_6_phi_fu_169_p8 = pos_6_ph2_reg_133;
        end else if ((1'b1 == ap_condition_174)) begin
            ap_phi_mux_pos_6_phi_fu_169_p8 = pos_6_ph3_reg_144;
        end else if ((1'b1 == ap_condition_171)) begin
            ap_phi_mux_pos_6_phi_fu_169_p8 = pos_6_ph_reg_155;
        end else begin
            ap_phi_mux_pos_6_phi_fu_169_p8 = 'bx;
        end
    end else begin
        ap_phi_mux_pos_6_phi_fu_169_p8 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_return_0 = val_fu_531_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_return_1 = ap_phi_mux_N_write_assign_phi_fu_236_p4;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        xf_division_lut_ce0 = 1'b1;
    end else begin
        xf_division_lut_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_11_fu_306_p2 == 1'd1) & (tmp_10_fu_300_p2 == 1'd1) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((tmp_10_fu_300_p2 == 1'd1) & (tmp_11_fu_306_p2 == 1'd0) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((tmp_10_fu_300_p2 == 1'd0) & (tmp_9_fu_294_p2 == 1'd1) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((tmp_9_fu_294_p2 == 1'd0) & (tmp_8_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_8_fu_288_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_17_fu_341_p2 == 1'd1) & (tmp_fu_312_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_23_fu_396_p2 == 1'd1) & (tmp_133_fu_367_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_31_fu_431_p2 == 1'd1) & (tmp_135_fu_402_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_27_fu_466_p2 == 1'd1) & (tmp_134_fu_437_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_L_fu_355_p2 = (pos_6_cast_fu_347_p1 + block_2_cast_fu_351_p1);

assign N_cast_fu_526_p1 = N_fu_521_p2;

assign N_fu_521_p2 = ($signed(5'd20) - $signed(B_L_reg_606));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_condition_171 = ((tmp_11_reg_590 == 1'd1) & (tmp_10_reg_586 == 1'd1) & (tmp_9_reg_582 == 1'd1));
end

always @ (*) begin
    ap_condition_174 = ((tmp_10_reg_586 == 1'd1) & (tmp_11_reg_590 == 1'd0) & (tmp_9_reg_582 == 1'd1));
end

assign block_2_cast_fu_351_p1 = ap_phi_mux_block_2_phi_fu_186_p8;

assign index_fu_508_p3 = ((tmp_32_fu_472_p2[0:0] === 1'b1) ? tmp_36_fu_489_p4 : tmp_37_fu_498_p4);

assign pos_4_fu_375_p2 = (tmp_1_reg_200 + 3'd1);

assign pos_5_fu_410_p2 = (tmp_2_reg_211 + 3'd1);

assign pos_6_cast_fu_347_p1 = ap_phi_mux_pos_6_phi_fu_169_p8;

assign pos_7_fu_445_p2 = (tmp_3_reg_222 + 3'd1);

assign pos_fu_320_p2 = (tmp1_reg_111 + 3'd1);

assign tmp_10_fu_300_p2 = ((tmpx_4_fu_264_p4 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_11_fu_306_p2 = ((tmpx_5_fu_274_p4 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_133_fu_367_p3 = tmp_1_reg_200[32'd2];

assign tmp_134_fu_437_p3 = tmp_3_reg_222[32'd2];

assign tmp_135_fu_402_p3 = tmp_2_reg_211[32'd2];

assign tmp_140_fu_477_p1 = x[14:0];

assign tmp_15_fu_326_p2 = (3'd3 - tmp1_reg_111);

assign tmp_16_fu_336_p2 = tmpx_reg_558 >> tmp_18_cast_fu_332_p1;

assign tmp_17_fu_341_p2 = ((tmp_16_fu_336_p2 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_18_cast_fu_332_p1 = tmp_15_fu_326_p2;

assign tmp_21_fu_381_p2 = (3'd3 - tmp_1_reg_200);

assign tmp_22_fu_391_p2 = tmpx_4_reg_563 >> tmp_23_cast_fu_387_p1;

assign tmp_23_cast_fu_387_p1 = tmp_21_fu_381_p2;

assign tmp_23_fu_396_p2 = ((tmp_22_fu_391_p2 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_25_fu_451_p2 = (3'd3 - tmp_3_reg_222);

assign tmp_26_fu_461_p2 = tmpx_6_reg_573 >> tmp_27_cast_fu_457_p1;

assign tmp_27_cast_fu_457_p1 = tmp_25_fu_451_p2;

assign tmp_27_fu_466_p2 = ((tmp_26_fu_461_p2 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_29_fu_416_p2 = (3'd3 - tmp_2_reg_211);

assign tmp_30_cast_fu_422_p1 = tmp_29_fu_416_p2;

assign tmp_30_fu_426_p2 = tmpx_5_reg_568 >> tmp_30_cast_fu_422_p1;

assign tmp_31_fu_431_p2 = ((tmp_30_fu_426_p2 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_32_fu_472_p2 = ((B_L_reg_606 == 5'd0) ? 1'b1 : 1'b0);

assign tmp_33_fu_361_p2 = ($signed(5'd31) + $signed(B_L_fu_355_p2));

assign tmp_34_fu_483_p2 = tmp_140_fu_477_p1 << tmp_38_cast_cast_fu_480_p1;

assign tmp_35_fu_516_p1 = index_fu_508_p3;

assign tmp_36_fu_489_p4 = {{x[14:4]}};

assign tmp_37_fu_498_p4 = {{tmp_34_fu_483_p2[14:4]}};

assign tmp_38_cast_cast_fu_480_p1 = tmp_33_reg_612;

assign tmp_8_fu_288_p2 = ((x == 16'd0) ? 1'b1 : 1'b0);

assign tmp_9_fu_294_p2 = ((tmpx_fu_254_p4 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_fu_312_p3 = tmp1_reg_111[32'd2];

assign tmpx_4_fu_264_p4 = {{x[11:8]}};

assign tmpx_5_fu_274_p4 = {{x[7:4]}};

assign tmpx_6_fu_284_p1 = x[3:0];

assign tmpx_fu_254_p4 = {{x[15:12]}};

assign val_fu_531_p1 = ap_phi_mux_p_0_in_phi_fu_246_p4;

assign xf_division_lut_address0 = tmp_35_fu_516_p1;

always @ (posedge ap_clk) begin
    ap_return_0_preg[31:16] <= 16'b0000000000000000;
end

endmodule //Inverse