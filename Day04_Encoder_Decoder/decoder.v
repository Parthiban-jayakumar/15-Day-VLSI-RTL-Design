`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 06:04:51 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0]a,
    output reg [3:0]y
    );
    always @(*)begin
    y=4'b0000;
    case(a)
    2'b00:y[0]=1'b1;
    2'b01:y[1]=1'b1;
    2'b10:y[2]=1'b1;
    2'b10:y[3]=1'b1;
    default :y=4'b0000;
    endcase
    end
    
    
    
    
endmodule
