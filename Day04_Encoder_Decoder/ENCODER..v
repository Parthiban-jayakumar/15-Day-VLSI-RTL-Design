`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 05:50:32 PM
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [3:0]d,
    output [0:1]y
    );
    assign y[0]=d[2]|d[3];
    assign y[1]=d[1]|d[3];
endmodule
