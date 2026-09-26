`timescale 1ns / 1ps

module counter_3bit_tb;

reg clk;
reg reset;
wire [2:0] q;

counter_3 DUT(
    .clk(clk),.reset(reset),.q(q)
);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1'b1;
    #10;

    reset = 1'b0;
    #80;

    $finish;
end

endmodule
