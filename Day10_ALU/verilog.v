`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2026 10:04:39 PM
// Design Name: 
// Module Name: ali_4b
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


module alu_4b(
    input [3:0]a,b,
    input [2:0]s,
    output reg[3:0]y,
    output reg c,
    output z
    );
    reg[4:0]temp;
    always@(*)begin
    y=4'b0000;
    c=1'b0;
    temp=5'b00000;
    case(s)
    3'b000:begin
    temp=a+b;
    y=temp[3:0];
    c=temp[4];
    end
    3'b001: begin
    y=a-b;
    end
    3'b010: begin
    y=a&b;
    end
    3'b011: begin
    y=a|b;
    end
    3'b100: begin
    y=a^b;
    end
    3'b101: begin
    y=~a;
    end
    default:begin
    y=4'b0000;
    c=1'b0;
    
    end
    endcase
    end
    assign z=(y==4'b0000);
    




    
endmodule
