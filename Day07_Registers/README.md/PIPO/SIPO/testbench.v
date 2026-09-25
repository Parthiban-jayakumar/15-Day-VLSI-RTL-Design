`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 08:44:38 PM
// Design Name: 
// Module Name: sipo_db
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


module sipo_db;
reg s_i;
reg clk;
wire[3:0]q;
 sipo dut(.s_i(s_i),.clk(clk),.q(q));
 initial begin
 clk=1'b0;
 forever #5 clk=~clk;
 end
 initial begin
 s_i=1'b1; #10;
  s_i=1'b0; #10;
   s_i=1'b0; #10;
    s_i=1'b1; #10;
    
    $finish;
    end
endmodule
