`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 07:48:00 PM
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(
    input t,clk,
    output reg q
    );
    always @(posedge clk)begin
    if(t==1'b1)
    q<=q;
    else
    q<=~q;
    end
endmodule
