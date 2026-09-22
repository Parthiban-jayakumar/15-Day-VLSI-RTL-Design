`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 06:14:03 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
reg[1:0]a;
wire[3:0]y;
decoder dut(.a(a),.y(y));
initial begin
a=2'b00;#10;
a=2'b01;#10;
a=2'b10;#10;
a=2'b11;#10;
end

endmodule
