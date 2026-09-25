`timescale 1ns / 1ps

module siso(
    input s_i,
    input clk,
    output s_o
);

reg [3:0] q;

always @(posedge clk) begin
    q <= {q[2:0], s_i};
end

assign s_o = q[3];

endmodule
