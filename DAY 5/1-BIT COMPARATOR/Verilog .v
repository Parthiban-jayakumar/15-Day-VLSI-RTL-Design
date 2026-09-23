`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 06:34:29 PM
// Design Name: 
// Module Name: comparitor
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


module comparitor(
    input a,b,
    output gt,eq,lt
    );
    assign gt=a&~b;
    assign eq=a~^b;
    assign lt=~a&b;
endmodule
