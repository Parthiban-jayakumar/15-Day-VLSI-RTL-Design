`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2026 06:47:49 PM
// Design Name: 
// Module Name: tb
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


module tb;
reg clk,reset;
wire red,green,yellow;
trafic_light_controller dut(.clk(clk),.reset(reset),.red(red),.green(green),.yellow(yellow));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
reset=1'b1;
#10;
reset=1'b0;
#150;
$finish;
end


endmodule

