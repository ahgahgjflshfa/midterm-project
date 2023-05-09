`timescale 1ns/ 1ns
module Register(d_out, clk, rst, en_reg, d_in);
    input clk, rst, en_reg;
    input [63:0] d_in;
    output reg [63:0] d_out;

    always @(posedge clk) begin
        if (rst)
            d_out <= 64'b0;
        else if (en_reg)
            d_out <= d_in;
    end
endmodule