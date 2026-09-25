`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 06:08:49 PM
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


module pipo_tb;
reg [3:0]d;
reg clk;
wire [3:0]q;
pipo_r dud(.d(d),.clk(clk),.q(q));
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
d=4'b0000;#10;
d=4'b0001;#10;
d=4'b0010;#10;
d=4'b0100;#10;
d=4'b0101;#10;
end


endmodule
