/*
	Title:	ALU Control Unit
	Input Port
		1. clk: clock
		2. signal_in: 傳進來的控制訊號
	Output Port
		1. signal_out: 傳出去的控制信號
*/

module alu_ctl(clk, signal_in, ctl);
    input clk;
    input [5:0] signal_in;
    output reg [5:0] ctl;

    reg [6:0] count;

    parameter AND = 6'd36;
    parameter OR = 6'd37;
    parameter ADD = 6'd32;
    parameter SUB = 6'd34;
    parameter SLT = 6'd42;
    parameter SRL = 6'd02;
    parameter MULTU = 6'd25;

    always @(posedge clk) begin
        
    end
endmodule

