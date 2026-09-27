`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2026 11:45:45 PM
// Design Name: 
// Module Name: universal_shift_register
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


module universal_shift_register(
    input [3:0]d,
    input s_r,s_l,clk,
    input [2:0]s,
    output reg [3:0]q
    );
    always@(posedge clk)begin
    case(s) 
    2'b00:q<=q;
    2'b01:q<={s_r,d[3:1]};
    2'b10:q<={d[2:0],s_l};
    2'b11:q<=d;
    default:q<=q;
    endcase
    end
    
    
endmodule
