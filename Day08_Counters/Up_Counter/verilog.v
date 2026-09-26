`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 09:27:25 PM
// Design Name: 
// Module Name: count_3bit
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


module counter_3bit(
    input clk,rst,
    output reg[2:0] q
    );
    
    always @ (posedge clk)begin
    if(rst)
   q<=3'b000;
   else
   q<=q + 1'b1;
   end 
endmodule

