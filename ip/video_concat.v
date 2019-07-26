`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/24 14:01:49
// Design Name: 
// Module Name: video_concat
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


module video_concat#(
parameter WIDTH = 24
)
(
    output reg [WIDTH - 1:0] stream_out_tdata,
    output reg stream_out_tlast,
    input stream_out_tready,
    output reg stream_out_tuser,
    output reg stream_out_tvalid,
    
    input [WIDTH - 1:0] stream_in0_tdata,
    input  stream_in0_tlast,
    output reg stream_in0_tready,
    input  stream_in0_tuser,
    input  stream_in0_tvalid,
    
    input [WIDTH - 1:0] stream_in1_tdata,
    input  stream_in1_tlast,
    output reg stream_in1_tready,
    input  stream_in1_tuser,
    input  stream_in1_tvalid,

    input [WIDTH - 1:0] stream_in2_tdata,
    input  stream_in2_tlast,
    output reg stream_in2_tready,
    input  stream_in2_tuser,
    input  stream_in2_tvalid,

    input [WIDTH - 1:0] stream_in3_tdata,
    input  stream_in3_tlast,
    output reg stream_in3_tready,
    input  stream_in3_tuser,
    input  stream_in3_tvalid,
        
    input clk,    
    input [31:0] switch

);

    always @(*)
    begin
        case(switch)
        0:begin
            stream_in0_tready = stream_out_tready;
            stream_out_tvalid = stream_in0_tvalid;
            stream_out_tdata = stream_in0_tdata;
            stream_out_tuser = stream_in0_tuser;
            stream_out_tlast = stream_in0_tlast;
        end
        1:begin
            stream_in1_tready = stream_out_tready;
            stream_out_tvalid = stream_in1_tvalid;
            stream_out_tdata = stream_in1_tdata;
            stream_out_tuser = stream_in1_tuser;
            stream_out_tlast = stream_in1_tlast;
        end
        2:begin
            stream_in2_tready = stream_out_tready;
            stream_out_tvalid = stream_in2_tvalid;
            stream_out_tdata = stream_in2_tdata;
            stream_out_tuser = stream_in2_tuser;
            stream_out_tlast = stream_in2_tlast;
        end
        3:begin
            stream_in3_tready = stream_out_tready;
            stream_out_tvalid = stream_in3_tvalid;
            stream_out_tdata = stream_in3_tdata;
            stream_out_tuser = stream_in3_tuser;
            stream_out_tlast = stream_in3_tlast;
        end
        default:begin
            stream_in0_tready = stream_out_tready;
            stream_out_tvalid = stream_in0_tvalid;
            stream_out_tdata = stream_in0_tdata;
            stream_out_tuser = stream_in0_tuser;
            stream_out_tlast = stream_in0_tlast;
        end
        endcase
    end
endmodule
