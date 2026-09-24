`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 08:05:22 PM
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
reg t,clk;
wire q;
t_flipflop dut(.t(t),.clk(clk),.q(q));
initial begin
clk=1'b0;
clk=~clk;
end
initial begin
t=1'b0; #10;
t=1'b1; #10;
t=1'b0; #10;
t=1'b1; #10;
t=1'b0; #10;
$finish;
end
endmodule

