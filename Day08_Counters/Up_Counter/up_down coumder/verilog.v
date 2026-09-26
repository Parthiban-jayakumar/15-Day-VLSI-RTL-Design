`timescale 1ns / 1ps

module up_down_counter_3bit(
    input clk,
    input reset,
    input up_down,
    output reg [2:0] q
);

always @(posedge clk) begin

    if (reset)
    q <= 3'b000;
    else if (up_down)
    q <= q + 1'b1;
    else
    q <= q - 1'b1;

end

endmodule
