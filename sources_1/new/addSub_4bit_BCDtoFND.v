`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 14:38:25
// Design Name: 
// Module Name: fulladder_4bit_BCDtoFND
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


module addSub_4bit_BCDtoFND(
    input [1:0] i_digitSelect,
    input i_en,
    input i_mode,
    input [3:0] i_a, i_b,

    output [3:0] o_digit,
    output [7:0] o_font,
    output o_c
    );

    wire [3:0] sum;

    BCDtoFND dut_0(
        .i_digitSelect(i_digitSelect),
        .i_value(sum),
        .i_en(i_en),
        
        .o_digit(o_digit),
        .o_font(o_font)
    );

    addSub_4bit dut_1(
        .i_a(i_a),
        .i_b(i_b),
        .i_mode(i_mode),

        .o_c(o_c),
        .o_sum(sum)
    );
endmodule
