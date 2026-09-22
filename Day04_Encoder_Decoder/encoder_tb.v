`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 05:54:47 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg [3:0]d;
wire [1:0]y;

encoder dut (.d(d),.y(y));

initial begin
d=4'b0001; #10;
d=4'b0010; #10;
d=4'b0100; #10;
d=4'b1000; #10;

#50 $finish;
end
    
endmodule
