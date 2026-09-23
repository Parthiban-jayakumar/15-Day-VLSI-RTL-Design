`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 06:38:13 PM
// Design Name: 
// Module Name: comparitor_tb
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


module comparitor_tb;
reg a,b;
wire gt,eq,lt;
comparitor dut(.a(a),.b(b),.gt(gt),.eq(eq),.lt(lt));
initial begin
 #10 a=1'b0; b=1'b0; 
  #10 a=1'b0; b=1'b1; 
   #10 a=1'b1; b=1'b0; 
    #10 a=1'b1; b=1'b1;
    #50$finish;
    end 
     
endmodule

