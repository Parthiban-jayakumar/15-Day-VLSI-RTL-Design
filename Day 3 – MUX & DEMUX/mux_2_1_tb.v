`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 06:15:30 PM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg i0,i1,s;
wire y;

mux_2_1 dut(.i0(i0),.i1(i1),.s(s),.y(y));

initial begin
i0=0; i1=1; s=0; #10;
i0=0; i1=1; s=1; #10;
i0=1; i1=0; s=0; #10;
i0=1; i1=0; s=1; #10;

 #50 $finish;
end
endmodule

