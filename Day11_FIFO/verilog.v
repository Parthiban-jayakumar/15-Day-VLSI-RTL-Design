`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2026 05:48:36 PM
// Design Name: 
// Module Name: fifo
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


module fifo(
    input [3:0]data_in,
    input wr_en,r_en,clk,
    input reset,
    output reg[3:0]data_out,
    output full,empty
    );
    reg[3:0]mem[0:7];
    reg[2:0]wr_prt;
    reg[2:0]r_prt;
    reg[3:0]count;
    always@(posedge clk)begin
    
    if(reset)begin
    wr_prt<=3'b000;
    r_prt<=3'b000;
    count<=4'b0000;
    data_out<=4'b0000;
    end
    
    else begin
    if(wr_en&& !full)begin
    mem[wr_prt]<=data_in;
    wr_prt<=wr_prt+1'b1;
    end
    
    if(r_en&&!empty)begin
    data_out<=mem[r_prt];
    r_prt<=r_prt+1'b1;
    end
    
    if(wr_en&&!full&&!(r_en&&!empty))begin
    count<=count+1'b1;
    end
   
    
    else if (r_en&&!empty&& !(wr_en&&!full))
    count<=count-1'b1;
    
    end
    end
    
    
    
    assign full=(count==4'd8);
    assign empty=(count==4'b0);
    
  
    
endmodule
