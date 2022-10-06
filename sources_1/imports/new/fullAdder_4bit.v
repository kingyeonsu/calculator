`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 14:08:35
// Design Name: 
// Module Name: fullAdder_4bit
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


module fullAdder_4bit(
    input [3:0] i_a, i_b,
    input i_c,
    output [3:0] o_sum,
    output o_c
    );

    wire w_carry_0, w_carry_1, w_carry_2;

    fullAdder FA_0(
        .i_a(i_a[0]),
        .i_b(i_b[0]),
        .i_c(i_c),
        .o_sum(o_sum[0]),
        .o_carry(w_carry_0)
    );

    fullAdder FA_1(
        .i_a(i_a[1]),
        .i_b(i_b[1]),
        .i_c(w_carry_0),
        .o_sum(o_sum[1]),
        .o_carry(w_carry_1)
    );

    fullAdder FA_2(
        .i_a(i_a[2]),
        .i_b(i_b[2]),
        .i_c(w_carry_1),
        .o_sum(o_sum[2]),
        .o_carry(w_carry_2)
    );

    fullAdder FA_3(
        .i_a(i_a[3]),
        .i_b(i_b[3]),
        .i_c(w_carry_2),
        .o_sum(o_sum[3]),
        .o_carry(o_c)
    );


endmodule
