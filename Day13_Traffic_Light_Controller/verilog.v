`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2026 06:25:23 PM
// Design Name: 
// Module Name: trafic _light_controller
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


module trafic_light_controller(
    input clk,reset,
    output reg red,green,yellow
    );
    reg[1:0]state;
    reg[2:0]count;
    
    parameter RED=2'b00;
    parameter GREEN=2'b01;
     parameter YELLOW=2'b10;
     
     always@(posedge clk)begin
     if(reset)begin
     state<=RED;
     count<=3'b000;
     end
     else begin
     case(state)
     RED:begin
     if(count==3'd4)begin
     count<=3'b000;
     state<=GREEN;
     end
     else begin
     count<=count+1'b1;
     end
     
     end
     
     GREEN:begin
     
      if(count==3'd4)begin
     count<=3'b000;
     state<=YELLOW;
     end
     else begin
     count<=count+1'b1;
     end
     
     end
     
     YELLOW:begin
      if(count==3'd2)begin
     count<=3'b000;
     state<=RED;
     end
     else begin
     count<=count+1'b1;
     end
     
     end
     default:begin
     state<=RED;
     count<=3'b000;
     end
     endcase
     
     end
     end
     always@(*)begin
     red=1'b0;
     green=1'b0;
     yellow=1'b0;
     
     case(state)
     RED:begin
     red=1'b1;
     end
     GREEN:begin
     green=1'b1;
     end
     YELLOW:begin
     yellow=1'b1;
     end
     default:begin
     red=1'b1;
     end
     endcase
     end
     
     
     
     
     
     


    
endmodule


