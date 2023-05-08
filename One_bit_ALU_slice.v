/*
    Title: 1 bit alu bit slice
    Input port:
        1. ctl: 功能選擇
        2. ai: 被加數
        3. bi: 加數
        4. invb: invert b (減法)
        5. cin: carry in
    Output port:
        1. sum: 結果
        2. carry: carry out
*/
`timescale 1ns/ 1ns
module One_bit_alu_slice(ctl, a, b, invb, cin, sum, carry);
    input [5:0] ctl;
    input a, b, invb, cin;
    output sum, carry;

    wire temp0, temp1, temp2;
    // and
    and and1(temp0, a, b);

    // or
    or or1(temp1, a, b);

    // add
    wire e1;
    xor(e1, b, invb);
    Full_adder fa(.a(a), .b(e1), .cin(cin), .sum(temp2), .carry(carry));

    // assign sel
    wire [1:0] sel;
    assign sel = (ctl == 36) ? 2'b00:   // and
                 (ctl == 37) ? 2'b01:   // or
                 (ctl == 32) ? 2'b10:   // add
                               2'b10;   // sub and slt

    // select
    Mux_4to1 mux41(.sel(sel), .in0(temp0), .in1(temp1), .in2(temp2), .in3(0), .out(sum));
endmodule