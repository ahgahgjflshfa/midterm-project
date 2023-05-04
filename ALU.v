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
module Alu(ctl, a, b, result);
    input [5:0] ctl;
    input [31:0] a, b;
    output wire [31:0] result;
    output carry;

    wire inv, cout;
    assign inv = (ctl == 34) ? 1'b1:   // sub
                 (ctl == 42) ? 1'b1:   // slt
                               1'b0;   // other

    wire [31:0] sum;

    One_bit_alu_slice aluslice0(.ctl(ctl), .ai(a[0]), .bi(b[0]), .invb(inv),.cin(0), .sum(sum[0]), .cout(cout));
    One_bit_alu_slice aluslice1(.ctl(ctl), .ai(a[1]), .bi(b[1]), .invb(inv),.cin(cout), .sum(sum[1]), .cout(cout));
    One_bit_alu_slice aluslice2(.ctl(ctl), .ai(a[2]), .bi(b[2]), .invb(inv),.cin(cout), .sum(sum[2]), .cout(cout));
    One_bit_alu_slice aluslice3(.ctl(ctl), .ai(a[3]), .bi(b[3]), .invb(inv),.cin(cout), .sum(sum[3]), .cout(cout));
    One_bit_alu_slice aluslice4(.ctl(ctl), .ai(a[4]), .bi(b[4]), .invb(inv),.cin(cout), .sum(sum[4]), .cout(cout));
    One_bit_alu_slice aluslice5(.ctl(ctl), .ai(a[5]), .bi(b[5]), .invb(inv),.cin(cout), .sum(sum[5]), .cout(cout));
    One_bit_alu_slice aluslice6(.ctl(ctl), .ai(a[6]), .bi(b[6]), .invb(inv),.cin(cout), .sum(sum[6]), .cout(cout));
    One_bit_alu_slice aluslice7(.ctl(ctl), .ai(a[7]), .bi(b[7]), .invb(inv),.cin(cout), .sum(sum[7]), .cout(cout));
    One_bit_alu_slice aluslice8(.ctl(ctl), .ai(a[8]), .bi(b[8]), .invb(inv),.cin(cout), .sum(sum[8]), .cout(cout));
    One_bit_alu_slice aluslice9(.ctl(ctl), .ai(a[9]), .bi(b[9]), .invb(inv),.cin(cout), .sum(sum[9]), .cout(cout));
    One_bit_alu_slice aluslice10(.ctl(ctl), .ai(a[10]), .bi(b[10]), .invb(inv),.cin(cout), .sum(sum[10]), .cout(cout));
    One_bit_alu_slice aluslice11(.ctl(ctl), .ai(a[11]), .bi(b[11]), .invb(inv),.cin(cout), .sum(sum[11]), .cout(cout));
    One_bit_alu_slice aluslice12(.ctl(ctl), .ai(a[12]), .bi(b[12]), .invb(inv),.cin(cout), .sum(sum[12]), .cout(cout));
    One_bit_alu_slice aluslice13(.ctl(ctl), .ai(a[13]), .bi(b[13]), .invb(inv),.cin(cout), .sum(sum[13]), .cout(cout));
    One_bit_alu_slice aluslice14(.ctl(ctl), .ai(a[14]), .bi(b[14]), .invb(inv),.cin(cout), .sum(sum[14]), .cout(cout));
    One_bit_alu_slice aluslice15(.ctl(ctl), .ai(a[15]), .bi(b[15]), .invb(inv),.cin(cout), .sum(sum[15]), .cout(cout));
    One_bit_alu_slice aluslice16(.ctl(ctl), .ai(a[16]), .bi(b[16]), .invb(inv),.cin(cout), .sum(sum[16]), .cout(cout));
    One_bit_alu_slice aluslice17(.ctl(ctl), .ai(a[17]), .bi(b[17]), .invb(inv),.cin(cout), .sum(sum[17]), .cout(cout));
    One_bit_alu_slice aluslice18(.ctl(ctl), .ai(a[18]), .bi(b[18]), .invb(inv),.cin(cout), .sum(sum[18]), .cout(cout));
    One_bit_alu_slice aluslice19(.ctl(ctl), .ai(a[19]), .bi(b[19]), .invb(inv),.cin(cout), .sum(sum[19]), .cout(cout));
    One_bit_alu_slice aluslice20(.ctl(ctl), .ai(a[20]), .bi(b[20]), .invb(inv),.cin(cout), .sum(sum[20]), .cout(cout));
    One_bit_alu_slice aluslice21(.ctl(ctl), .ai(a[21]), .bi(b[21]), .invb(inv),.cin(cout), .sum(sum[21]), .cout(cout));
    One_bit_alu_slice aluslice22(.ctl(ctl), .ai(a[22]), .bi(b[22]), .invb(inv),.cin(cout), .sum(sum[22]), .cout(cout));
    One_bit_alu_slice aluslice23(.ctl(ctl), .ai(a[23]), .bi(b[23]), .invb(inv),.cin(cout), .sum(sum[23]), .cout(cout));
    One_bit_alu_slice aluslice24(.ctl(ctl), .ai(a[24]), .bi(b[24]), .invb(inv),.cin(cout), .sum(sum[24]), .cout(cout));
    One_bit_alu_slice aluslice25(.ctl(ctl), .ai(a[25]), .bi(b[25]), .invb(inv),.cin(cout), .sum(sum[25]), .cout(cout));
    One_bit_alu_slice aluslice26(.ctl(ctl), .ai(a[26]), .bi(b[26]), .invb(inv),.cin(cout), .sum(sum[26]), .cout(cout));
    One_bit_alu_slice aluslice27(.ctl(ctl), .ai(a[27]), .bi(b[27]), .invb(inv),.cin(cout), .sum(sum[27]), .cout(cout));
    One_bit_alu_slice aluslice28(.ctl(ctl), .ai(a[28]), .bi(b[28]), .invb(inv),.cin(cout), .sum(sum[28]), .cout(cout));
    One_bit_alu_slice aluslice29(.ctl(ctl), .ai(a[29]), .bi(b[29]), .invb(inv),.cin(cout), .sum(sum[29]), .cout(cout));
    One_bit_alu_slice aluslice30(.ctl(ctl), .ai(a[30]), .bi(b[30]), .invb(inv),.cin(cout), .sum(sum[30]), .cout(cout));
    One_bit_alu_slice aluslice31(.ctl(ctl), .ai(a[31]), .bi(b[31]), .invb(inv),.cin(cout), .sum(sum[31]), .cout(cout));

    assign result = (ctl == 42) ? {31'b0, sum[31]}: // slt
                                  sum;              // other

endmodule