`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 09:20:17 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb;
reg [3:0]d;
reg clk,load;
wire s_o;
piso dut(.d(d),.clk(clk),.load(load),.s_o(s_o));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
d=4'b1010;
load=1'b1;
#10;
load=1'b0;#10;

#10;
#10;
#10;
$finish;
end
endmodule
