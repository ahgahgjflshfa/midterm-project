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
    wire carry;
    wire [31:0] hi, lo;
    reg [63:0] temp, multiplicand, multiplier;
    parameter MULTU= 6'd25;
    parameter OUT = 6'b111111;

    ALU alu0(.ctl(Signal), .a(lo), .b(multiplicand[31:0]), .cin(0), .carry(carry), .result(lo));
    ALU alu1(.ctl(Signal), .a(hi), .b(multiplicand[63:32]), .cin(carry), .carry(), .result(hi));

    always @( posedge clk or reset ) begin
        if ( reset ) begin
            temp = 64'b0;
            multiplicand = 64'b0;
            multiplier = 64'b0;
        end
        else begin
            case ( Signal )
                MULTU: begin
                    
                end
                OUT: temp <= {hi,lo};
            endcase
        end
    end

    assign dataOut = temp ;

endmodule