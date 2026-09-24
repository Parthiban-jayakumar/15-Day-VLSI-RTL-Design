`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 07:38:10 PM
// Design Name: 
// Module Name: j_k_flip_flop
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


module j_k_flip_flop(
    input j,k,clk,
    output reg q
    );
    always @(posedge clk)begin
    if(j==1'b0 && k==1'b0)
    q<=q;
    else if(j==1'b0 && k==1'b1)
    q<=1'b0;
    else if(j==1'b1 && k==1'b0)
    q<=1'b1;
    else
    q<=~q;
    end
    
endmodule
