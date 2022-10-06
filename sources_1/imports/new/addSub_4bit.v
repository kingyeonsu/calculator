`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 15:33:50
// Design Name: 
// Module Name: addSub_4bit
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


module addSub_4bit(
    input [3:0] i_a, i_b,
    input i_mode,
    output [3:0] o_sum,
    output o_c
    );

    wire [2:0] w_carry;
    wire [3:0] w_b;

    assign w_b = {4{i_mode}} ^ i_b;

    fullAdder FA_0(
        .i_a(i_a[0]),
        .i_b(w_b[0]),
        .i_c(i_mode),
        .o_sum(o_sum[0]),
        .o_carry(w_carry[0])
    );

    fullAdder FA_1(
        .i_a(i_a[1]),
        .i_b(w_b[1]),
        .i_c(w_carry[0]),
        .o_sum(o_sum[1]),
        .o_carry(w_carry[1])
    );

    fullAdder FA_2(
        .i_a(i_a[2]),
        .i_b(w_b[2]),
        .i_c(w_carry[1]),
        .o_sum(o_sum[2]),
        .o_carry(w_carry[2])
    );

    fullAdder FA_3(
        .i_a(i_a[3]),
        .i_b(w_b[3]),
        .i_c(w_carry[2]),
        .o_sum(o_sum[3]),
        .o_carry(o_c)
    );

endmodule
