`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 07:09:43 PM
// Design Name: 
// Module Name: siso_tb
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


module siso_tb;
reg s_i;
reg clk;
wire s_o;
siso dut(.s_i(s_i),.clk(clk),.s_o(s_o));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
s_i=1'b1;#10;
s_i=1'b0;#10;
s_i=1'b0;#10;
s_i=1'b1;#10;
$finish;
end

endmodule
