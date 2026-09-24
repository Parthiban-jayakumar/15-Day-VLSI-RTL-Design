`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 07:03:44 PM
// Design Name: 
// Module Name: sr_tb
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


module sr_tb;
reg s,r,clk;
wire q;
sr_flip_flop dut (.s(s),.r(r),.clk(clk),.q(q));
initial begin
clk=1'b0;
#5 clk=~clk;
end
initial begin
s=1'b0; r=1'b0; #10
s=1'b0; r=1'b1; #10
s=1'b1; r=1'b0; #10
s=1'b1; r=1'b1; #10
 $finish;
 end

endmodule
