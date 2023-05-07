`timescale 1ns/ 1ns
module Mux_4to1(sel, in0, in1, in2, in3, out);
    input wire [1:0] sel;
    input in0, in1, in2, in3;
    output out;

    assign out = (sel[1]) ? (sel[0] ? in3 : in2):
                        (sel[0] ? in1 : in0);
endmodule