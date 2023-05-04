module Mux_4to1(sel, in0, in1, in2, in3, out)
    input sel;
    input in0, in1, in2, in3;
    output out;

    assign out = (aluctrl == 2'b00) ? in0:
                 (aluctrl == 2'b01) ? in1:
                 (aluctrl == 2'b10) ? in2:
                                      in3;

endmodule