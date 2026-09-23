`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 07:08:16 PM
// Design Name: 
// Module Name: parity_tb
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


module parity_tb;
reg a,b,c;
wire p;
parity dut(.a(a),.b(b),.c(c),.p(p));
initial begin
a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;

$finish;
end

endmodule

