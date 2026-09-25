`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 06:05:38 PM
// Design Name: 
// Module Name: siso_r
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


module pipo_r(
    input [3:0]d,
    input clk,
    output reg[3:0]q
    );
    always@(posedge clk)begin
    q<=d;
    end
endmodule
