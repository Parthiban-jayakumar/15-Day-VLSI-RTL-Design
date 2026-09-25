`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 09:15:40 PM
// Design Name: 
// Module Name: piso
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


module piso(
    input [3:0]d,
    input load,clk,
    output s_o
    );
    reg[3:0]q;
    always @ (posedge clk) begin
    if (load)
    q<=d;
    else
    q<={q[2:0],1'b0};
    end
    assign s_o=q[3];
endmodule
