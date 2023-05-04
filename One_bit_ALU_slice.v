/*
    Title: 1 bit alu bit slice
    Input port:
        1. sel: 功能選擇
        2. ai: 被加數
        3. bi: 加數
        4. invb: invert b (減法)
        5. cin: carry in
    Output port:
        1. sum: 結果
        2. cout: carry out
*/
module One_bit_alu_slice(ctl, ai, bi, invb, cin, sum, cout);
    input [5:0] ctl;
    input ai, bi, invb, cin;
    output sum, cout;

    wire temp0, temp1, temp2;
    // and
    and(temp0, a, b);

    // or
    or(temp1, a, b);

    // add
    wire e1;
    xor(e1, b, invb);
    Full_adder fa(.a(ai), .b(e1), .cin(cin), .sum(temp2), .cout(cout));

    // assign sel
    wire sel;
    assign sel = (ctl == 36) ? 2'b00:   // and
                 (ctl == 37) ? 2'b01:   // or
                 (ctl == 32) ? 2'b00:   // add
                               2'b00;   // sub

    // select
    Mux_4to1 mux41(.sel(sel), .in0(temp0), .in1(temp1), .in2(temp2), .out(sum));
endmodule