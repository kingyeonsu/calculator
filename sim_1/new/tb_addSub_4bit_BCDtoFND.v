`timescale 1ns / 1ps

module tb_addSub_4bit_BCDtoFND();

    reg [1:0] i_digitSelect;
    reg i_en, i_mode;
    reg [3:0] i_a, i_b;

    wire [3:0] o_digit;
    wire [7:0] o_font;
    wire o_c;

    addSub_4bit_BCDtoFND dut(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .i_mode(i_mode),
        .i_a(i_a),
        .i_b(i_b),

        .o_digit(o_digit),
        .o_font(o_font),
        .o_c(o_c)
    );

initial begin
    #00 i_en = 1'b1; i_digitSelect = 2'b00;
    #10 i_en = 1'b1; i_digitSelect = 2'b01;
    #10 i_en = 1'b1; i_digitSelect = 2'b10;
    #10 i_en = 1'b1; i_digitSelect = 2'b11;
    
    #10 i_en = 1'b0; i_digitSelect = 2'b00; i_a = 4'h0;  i_b = 4'h10;  
    #10 i_en = 1'b0; i_digitSelect = 2'b01; i_a = 4'h1;  i_b = 4'h9;  
    #10 i_en = 1'b0; i_digitSelect = 2'b10; i_a = 4'h2;  i_b = 4'h8;  
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h3;  i_b = 4'h7;  
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h4;  i_b = 4'h6;  
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h5;  i_b = 4'h5; i_mode = 1'b0; 
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h6;  i_b = 4'h4; i_mode = 1'b0; 
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h7;  i_b = 4'h3; i_mode = 1'b0; 
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h8;  i_b = 4'h2; i_mode = 1'b1; 
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h9;  i_b = 4'h1; i_mode = 1'b1; 
    #10 i_en = 1'b0; i_digitSelect = 2'b11; i_a = 4'h10; i_b = 4'h0; i_mode = 1'b1;
    #10 $finish;
end

endmodule
