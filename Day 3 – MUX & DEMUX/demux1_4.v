`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 07:06:53 PM
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(
    input d,
    input [1:0]s,
    output reg [3:0]y
    );
    always @(*)begin
    y=4'b0000;
    case(s)
    2'b00:y[0]=d;
    2'b01:y[1]=d;
    2'b10:y[2]=d;
    2'b11:y[3]=d;
    
    default:y=4'b0000;
    
    endcase
    end
    
    
    
endmodule
