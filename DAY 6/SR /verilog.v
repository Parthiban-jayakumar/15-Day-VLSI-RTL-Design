`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 06:53:18 PM
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input s,r,clk,
    output reg q
    );
    always @(posedge clk)begin
    if(s==1'b0 && r==1'b0)
    q<=q;
    else if (s==1'b0 && r==1'b1)
    q<=1'b0;
 
     else if (s==1'b1 && r==1'b0)
     q<=1'b1;
     else 
     q=1'bx;
     end
     
     
     

     
    
    
    
endmodule
