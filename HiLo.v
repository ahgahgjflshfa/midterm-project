`timescale 1ns/1ns
module HiLo(clk, MulAns, HiOut, LoOut, reset);
    input clk, reset;
    input [63:0] MulAns;
    output [31:0] HiOut, LoOut;

    reg [63:0] HiLo;

    always @(posedge clk or reset)
        if (reset)
            HiLo = 64'b0;
        
        else
            HiLo = MulAns;
    
    assign HiOut = HiLo[63:32];
    assign LoOut = HiLo[31:0];
endmodule