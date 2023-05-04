module Mux_4to1(sel, in0, in1, in2, in3, out);
    input sel;
    input in0, in1, in2, in3;
    output wire out;

    assign out = (sel == 2'b00) ? in0:
                 (sel == 2'b01) ? in1:
                 (sel == 2'b10) ? in2:
                                  in3;

endmodule