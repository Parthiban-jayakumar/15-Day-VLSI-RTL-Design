`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2026 11:01:25 PM
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
reg s_i,clk;
wire s_o;
shift_register dut(.s_i(s_i),.clk(clk),.s_o(s_o));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
s_i=1'b0; #10;
s_i=1'b1; #10;
s_i=1'b0; #10;
s_i=1'b1; #10;
$finish;
end
endmodule
