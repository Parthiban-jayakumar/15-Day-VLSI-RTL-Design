`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 10:57:50 PM
// Design Name: 
// Module Name: apb
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


module apb(
    input PCLK,PRESETn,PSEL,PENABLE,PWRITE,
    input [1:0]PADDR,
    input [7:0]PWDATA,
    output reg [7:0]PRDATA,
    output PREADY
    );
    reg[1:0]state;
    reg [7:0]reg0;
    reg [7:0]reg1;
    reg [7:0]reg2;
    reg [7:0]reg3;
    
    parameter IDEL=2'b00;
    parameter SETUP=2'b01;
    parameter ACCESS=2'b10;
    
    always@(posedge PCLK)begin
    
    if(!PRESETn)begin
    state<=IDEL;
    reg0<=8'b00000000;
    reg1<=8'b00000000;
    reg2<=8'b00000000;
    reg3<=8'b00000000;
    end
     
     else begin
     case(state)
     
     IDEL:begin
     if(PSEL)
     state<=SETUP;
     end
     
     SETUP:begin
     if(PENABLE)
     state<=ACCESS;
     end
     ACCESS:begin
     
     state<=IDEL;
     end
     default:begin
     state<=IDEL;
     end 
     
     endcase
     if(PSEL&&PENABLE&&PWRITE)begin
     case(PADDR)
     2'b00:reg0<=PWDATA;
     2'b01:reg1<=PWDATA;
     2'b10:reg2<=PWDATA;
     2'b11:reg3<=PWDATA;
     
   
     endcase
     end
     end
   end  
   
   always@(*)begin
     PRDATA=8'b00000000;
    if(PSEL&&PENABLE&&!PWRITE)begin
     case(PADDR)
     2'b00:PRDATA=reg0;
     2'b01:PRDATA=reg1;
     2'b10:PRDATA=reg2;
     2'b11:PRDATA=reg3;
     
     default:PRDATA=8'b00000000;
     endcase
     end
     end
     
     assign PREADY=(state==ACCESS);
     
     
     
     
    
endmodule
