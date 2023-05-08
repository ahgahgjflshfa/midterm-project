/*
    Title: ALU
    Input Port
		1. ctl: 由alu_ctl解碼完的控制訊號
		2. a:   inputA,第一筆要處理的資料
		3. b:   inputB,第二筆要處理的資料
	Output Port
		1. result: 最後處理完的結果
		2. zero:   branch指令所需要之輸出
*/
`timescale 1ns/ 1ns
module ALU(ctl, a, b, cin, carry, result);
    input cin;
    input [5:0] ctl;
    input [31:0] a, b;
    output wire [31:0] result;
    output carry;

    wire inv;
    assign inv = (ctl == 34) ? 1'b1:   // sub
                 (ctl == 42) ? 1'b1:   // slt
                               1'b0;   // other

    wire cout;
    wire [31:0] sum;

    One_bit_alu_slice aluslice0(.ctl(ctl), .a(a[0]), .b(b[0]), .invb(inv), .cin(cin), .sum(sum[0]), .carry(carry));
    One_bit_alu_slice aluslice1(.ctl(ctl), .a(a[1]), .b(b[1]), .invb(inv), .cin(cout), .sum(sum[1]), .carry(carry));
    One_bit_alu_slice aluslice2(.ctl(ctl), .a(a[2]), .b(b[2]), .invb(inv), .cin(cout), .sum(sum[2]), .carry(carry));
    One_bit_alu_slice aluslice3(.ctl(ctl), .a(a[3]), .b(b[3]), .invb(inv), .cin(cout), .sum(sum[3]), .carry(carry));
    One_bit_alu_slice aluslice4(.ctl(ctl), .a(a[4]), .b(b[4]), .invb(inv), .cin(cout), .sum(sum[4]), .carry(carry));
    One_bit_alu_slice aluslice5(.ctl(ctl), .a(a[5]), .b(b[5]), .invb(inv), .cin(cout), .sum(sum[5]), .carry(carry));
    One_bit_alu_slice aluslice6(.ctl(ctl), .a(a[6]), .b(b[6]), .invb(inv), .cin(cout), .sum(sum[6]), .carry(carry));
    One_bit_alu_slice aluslice7(.ctl(ctl), .a(a[7]), .b(b[7]), .invb(inv), .cin(cout), .sum(sum[7]), .carry(carry));
    One_bit_alu_slice aluslice8(.ctl(ctl), .a(a[8]), .b(b[8]), .invb(inv), .cin(cout), .sum(sum[8]), .carry(carry));
    One_bit_alu_slice aluslice9(.ctl(ctl), .a(a[9]), .b(b[9]), .invb(inv), .cin(cout), .sum(sum[9]), .carry(carry));
    One_bit_alu_slice aluslice10(.ctl(ctl), .a(a[10]), .b(b[10]), .invb(inv), .cin(cout), .sum(sum[10]), .carry(carry));
    One_bit_alu_slice aluslice11(.ctl(ctl), .a(a[11]), .b(b[11]), .invb(inv), .cin(cout), .sum(sum[11]), .carry(carry));
    One_bit_alu_slice aluslice12(.ctl(ctl), .a(a[12]), .b(b[12]), .invb(inv), .cin(cout), .sum(sum[12]), .carry(carry));
    One_bit_alu_slice aluslice13(.ctl(ctl), .a(a[13]), .b(b[13]), .invb(inv), .cin(cout), .sum(sum[13]), .carry(carry));
    One_bit_alu_slice aluslice14(.ctl(ctl), .a(a[14]), .b(b[14]), .invb(inv), .cin(cout), .sum(sum[14]), .carry(carry));
    One_bit_alu_slice aluslice15(.ctl(ctl), .a(a[15]), .b(b[15]), .invb(inv), .cin(cout), .sum(sum[15]), .carry(carry));
    One_bit_alu_slice aluslice16(.ctl(ctl), .a(a[16]), .b(b[16]), .invb(inv), .cin(cout), .sum(sum[16]), .carry(carry));
    One_bit_alu_slice aluslice17(.ctl(ctl), .a(a[17]), .b(b[17]), .invb(inv), .cin(cout), .sum(sum[17]), .carry(carry));
    One_bit_alu_slice aluslice18(.ctl(ctl), .a(a[18]), .b(b[18]), .invb(inv), .cin(cout), .sum(sum[18]), .carry(carry));
    One_bit_alu_slice aluslice19(.ctl(ctl), .a(a[19]), .b(b[19]), .invb(inv), .cin(cout), .sum(sum[19]), .carry(carry));
    One_bit_alu_slice aluslice20(.ctl(ctl), .a(a[20]), .b(b[20]), .invb(inv), .cin(cout), .sum(sum[20]), .carry(carry));
    One_bit_alu_slice aluslice21(.ctl(ctl), .a(a[21]), .b(b[21]), .invb(inv), .cin(cout), .sum(sum[21]), .carry(carry));
    One_bit_alu_slice aluslice22(.ctl(ctl), .a(a[22]), .b(b[22]), .invb(inv), .cin(cout), .sum(sum[22]), .carry(carry));
    One_bit_alu_slice aluslice23(.ctl(ctl), .a(a[23]), .b(b[23]), .invb(inv), .cin(cout), .sum(sum[23]), .carry(carry));
    One_bit_alu_slice aluslice24(.ctl(ctl), .a(a[24]), .b(b[24]), .invb(inv), .cin(cout), .sum(sum[24]), .carry(carry));
    One_bit_alu_slice aluslice25(.ctl(ctl), .a(a[25]), .b(b[25]), .invb(inv), .cin(cout), .sum(sum[25]), .carry(carry));
    One_bit_alu_slice aluslice26(.ctl(ctl), .a(a[26]), .b(b[26]), .invb(inv), .cin(cout), .sum(sum[26]), .carry(carry));
    One_bit_alu_slice aluslice27(.ctl(ctl), .a(a[27]), .b(b[27]), .invb(inv), .cin(cout), .sum(sum[27]), .carry(carry));
    One_bit_alu_slice aluslice28(.ctl(ctl), .a(a[28]), .b(b[28]), .invb(inv), .cin(cout), .sum(sum[28]), .carry(carry));
    One_bit_alu_slice aluslice29(.ctl(ctl), .a(a[29]), .b(b[29]), .invb(inv), .cin(cout), .sum(sum[29]), .carry(carry));
    One_bit_alu_slice aluslice30(.ctl(ctl), .a(a[30]), .b(b[30]), .invb(inv), .cin(cout), .sum(sum[30]), .carry(carry));
    One_bit_alu_slice aluslice31(.ctl(ctl), .a(a[31]), .b(b[31]), .invb(inv), .cin(cout), .sum(sum[31]), .carry(carry));

    assign result = (ctl == 42) ? {31'b0, sum[31]}: // slt
                                  sum;              // other

endmodule