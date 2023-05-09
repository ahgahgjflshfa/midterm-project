`timescale 1ns/1ns

module Multiplier(clk, reset, Signal, dataA, dataB, dataOut);

    input clk;
    input reset;

    input [5:0] Signal;

    input [31:0] dataA;
    input [31:0] dataB;

    output [63:0] dataOut;

    wire [31:0] hi = 0;
    wire [31:0] lo = 0;
    wire [63:0] product;

    reg en_reg;
    reg [63:0] multiplicand; // 被乘數
    reg [31:0] multiplier; // 乘數
    reg [63:0] tempOut;

    parameter MULTU = 6'b011001;
    parameter OUT = 6'b111111;

    ALU alu0(.ctl(Signal), .a(lo), .b(multiplicand[31:0]), .cin(0), .carry(carry), .result(lo));
    ALU alu1(.ctl(Signal), .a(hi), .b(multiplicand[63:32]), .cin(carry), .carry(), .result(hi));

    Register Product(.clk(clk), .rst(reset), .en_reg(en_reg), .d_in({hi, lo}), .d_out(product));

    always @ ( posedge clk or reset )begin
        if (reset) begin
            tempOut = 64'b0;
            multiplicand = 64'b0;
            multiplier = 32'b0;
            en_reg = 1'b0;
        end
        else if ((Signal == MULTU) && (multiplicand == 64'b0) && (multiplier == 64'b0)) begin
            multiplicand = {32'b0, dataA};
            multiplier = dataB;
        end
        else if (Signal == OUT) begin
            tempOut = product;
        end
        else begin
            if (multiplier[0] == 1'b1)
                en_reg = 1'b1;
            else
                en_reg = 1'b0;

            //multiplicand = multiplicand << 1; 會變成無窮迴圈 e04
            //multiplier = multiplier >> 1;
        end
    end

    assign dataOut = tempOut;
endmodule