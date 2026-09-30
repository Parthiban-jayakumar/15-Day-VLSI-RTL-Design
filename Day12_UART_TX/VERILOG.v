`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 06:11:24 PM
// Design Name: 
// Module Name: uart_8b
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


module uart_8b(
    input [7:0]data,
    input start,clk,rst,
    output reg tx,busy
    );
    parameter BAUD_COUNT=5208;
    
    reg[7:0]data_reg;
    reg[12:0]baud_count;
    reg[2:0]bit_count;
    reg[1:0]state;
    
    parameter IDEL=2'b00;
    parameter START=2'b01;
    parameter DATA=2'b10;
    parameter STOP=2'b11;
    
    always@(posedge clk)begin
    if(rst)begin
    data_reg<=8'b00000000;
    baud_count<=13'b0000000000000;
    bit_count<=3'b000;
    state<=IDEL;
    tx<=1'b1;
    busy<=1'b0;
    end
    else begin
    
    case(state)
     
     IDEL:begin
     tx=1'b1;
     busy<=1'b0;
     baud_count<=13'b0000000000000;
     
     if(start)begin
     data_reg<=data;
     bit_count<=3'b000;
     state<=START;
     tx<=1'b1;
     
     end
     
     end
    
    START:begin
    
    tx<=1'b0;
    if(baud_count==BAUD_COUNT-1)begin
     baud_count<=13'b0000000000000;
     state<=DATA;
      end
      else begin
      baud_count=baud_count+1'b1;
      end
      
      end
      
      DATA:begin
      tx<=data_reg[bit_count];
      if(baud_count==BAUD_COUNT-1)begin
     baud_count<=13'b0000000000000;
     
     if(bit_count==3'b111)begin
     state<=STOP;
     end
     else begin
     bit_count<=bit_count+1'b1;
     end
     end 
     else begin
     baud_count<=baud_count+1'b1;
     end
     end
     
      STOP:begin
      
      tx<=1'b1;
      if(baud_count==BAUD_COUNT-1)begin
     baud_count<=13'b0000000000000;
     state<=IDEL;
     busy<=1'b1;
     end
     else begin
     baud_count<=baud_count+1'b1;
     end
     end
     default:begin
     state<=IDEL;
     end
     endcase
     end
     
     end



endmodule
