`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 16:13:37
// Design Name: 
// Module Name: simple_caculator
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


module simple_caculator(
    input [3:0] i_a, i_b,
    input [1:0] i_select,
    
    output [3:0] o_result
    );

    reg [3:0] r_result;
    assign o_result = r_result;

    always @(*) begin
        case (i_select)
            2'b00 : r_result = i_a + i_b;
            2'b01 : r_result = i_a - i_b;
            2'b10 : r_result = i_a * i_b;
            2'b11 : begin
                if (i_b == 0)
                    r_result = 0;
                else r_result = i_a / i_b;
            end  
        endcase
    end


endmodule
