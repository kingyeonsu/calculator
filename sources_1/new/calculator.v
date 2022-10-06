`timescale 1ns / 1ps

module calculator(
    input [3:0] i_a, i_b,
    input [1:0] i_select,
    input [1:0] i_digitSelect,
    input i_en,

    output [3:0] o_digit,
    output [7:0] o_font
    );

    wire [3:0] w_result;

    simple_caculator dut_0(
        .i_a(i_a),
        .i_b(i_b),
        .i_select(i_select),

        .o_result(w_result)
    );

    BCDtoFND dut_1(
        .i_digitSelect(i_digitSelect),
        .i_value(w_result),
        .i_en(i_en),

        .o_digit(o_digit),
        .o_font(o_font)
    );

endmodule
