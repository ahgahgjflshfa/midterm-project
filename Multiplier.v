/*
    Title: First Version Multiplier
    Input port:
        1. clk: clock
        2.
*/
module Multiplier(clk, ctl, a, b, product);
    input clk;
    input [5:0] ctl;
    input [31:0] a, b;
    output [31:0] product;

    wire carry;
    reg [63:0] temp, multiplicand, multiplier;
    reg rst, en_reg;

    parameter MULTU = 6'd25;

    ALU alu0(.ctl(ctl), .a(temp[31:0]), .b(multiplicand[31:0]), .cin(0), .carry(carry), .result(temp[31:0]));
    ALU alu1(.ctl(ctl), .a(temp[63:32]), .b(multiplicand[63:32]), .cin(carry), .result(temp[63:32]));

    Register_64bit Product(.d_out(product), .clk(clk), .rst(rst), .en_reg(en_reg), .d_in(temp));

    // control
    always @(posedge clk) begin
        if (ctl == MULTU) begin
            temp = product;

            if (multiplier[0] == 1'b1)
                en_reg = 1; // 寫入 register
            else
                en_reg = 0;

            multiplicand = multiplicand << 1;   // shift left 
            multiplier = multiplier >> 1;       // shift right
        end
    end
endmodule