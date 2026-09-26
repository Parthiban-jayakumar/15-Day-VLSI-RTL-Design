`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 09:31:29 PM
// Design Name: 
// Module Name: counter_td
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module up_down_counter_3bit_tb;

reg clk;
reg reset;
reg up_down;
wire [2:0] q;

up_down_counter_3bit DUT(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .q(q)
);

// Clock generation
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin

    // Reset
    reset = 1'b1;
    up_down = 1'b1;
    #10;

    // Count UP
    reset = 1'b0;
    up_down = 1'b1;
    #40;

    // Count DOWN
    up_down = 1'b0;
    #40;

    $finish;

end

endmodule
