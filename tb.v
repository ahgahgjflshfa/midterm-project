`timescale 1ns/ 1ns
module tb();
    reg a, b, cin;
    wire carry, sum;
    Full_adder fa(.a(a), .b(b), .cin(cin), .carry(carry), .sum(sum));



    initial begin
        a = 1'b0;
        b = 1'b0;
        cin = 1'b0;

        #100
        a = 1'b1;
        b = 1'b1;
        cin = 1'b1;
        #100
        $stop;
    end

endmodule