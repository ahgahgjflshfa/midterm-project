/*
    Title: 32 bit Register
    Input Port
		1. clk
		2. rst: 重置訊號
		3. en_reg: 控制暫存器是否可寫入
		4. d_in: 欲寫入的暫存器資料
	Output Port
		1. d_out: 所讀取的暫存器資料
*/
`timescale 1ns/ 1ns
module Register_32bit(d_out, clk, rst, en_reg, d_in);
    input clk, rst, en_reg;
    input [31:0] d_in;
    output reg [31:0] d_out;

    always @(posedge clk) begin
        if (rst)
            d_out <= 32'b0;
        else if (en_reg)
            d_out <= d_in;
    end
endmodule