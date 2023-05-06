module tb();
    reg clk, rst;

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b1;
    end
endmodule