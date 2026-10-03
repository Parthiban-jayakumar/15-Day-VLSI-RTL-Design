`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2026 09:10:19 PM
// Design Name: 
// Module Name: tlc
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


module tlc(
    input clk,reset,vehicle,
    output reg red,green,yellow
    );
    reg[1:0]state;
    reg[2:0]count;
    parameter RED =2'b00;
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
   else if(count>=3'd2&&vehicle==1'b0)begin
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
    count<=3'b000;
    state<=RED;
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
