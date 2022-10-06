`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 11:34:20
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    input i_a, i_b, i_c,
    output o_sum, o_carry
    );

    wire w_sum_0, w_carry_0, w_carry_1;

    halfAdder HA_0(
    .i_a(i_a),
    .i_b(i_b),
    .o_sum(w_sum_0),
    .o_carry(w_carry_0)
    );

    halfAdder HA_1(
    .i_a(w_sum_0),
    .i_b(i_c),
    .o_sum(o_sum),
    .o_carry(w_carry_1)
    );

    assign o_carry = w_carry_0 | w_carry_1;

endmodule
