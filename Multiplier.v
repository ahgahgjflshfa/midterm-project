`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );
    input clk ;
    input reset ;
    input [31:0] dataA ;
    input [31:0] dataB ;
    input [5:0] Signal ;
    output [63:0] dataOut ;

    //   Signal ( 6-bits)?
    //   MULTU  : 25

    reg [63:0] temp, multiplicand, multiplier, ken;
    parameter MULTU= 6'd25;
    parameter OUT = 6'b111111;

    ALU alu0(.ctl(Signal), .a(ken[31:0]), .b(multiplicand[31:0]), .cin(0), .carry(carry), .result(ken[31:0]));
    ALU alu1(.ctl(Signal), .a(ken[63:0]), .b(multiplicand[31:0]), .cin(carry), .result(ken[63:32]));

    always @( posedge clk or reset ) begin
        if ( reset ) begin
                temp = 32'b0;
                multiplicand = dataA;
                multiplier = dataB;
        end
        else begin
            case ( Signal )
                MULTU: begin
                    multiplicand = multiplicand << 1;
                    multiplier = multiplier >> 1;
                end
                OUT: temp = ken;
            endcase
        end
    end

    assign dataOut = temp ;

endmodule