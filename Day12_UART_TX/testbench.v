`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 06:56:56 PM
// Design Name: 
// Module Name: tb
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


`timescale 1ns / 1ps

module uart_8b_tb;

reg [7:0]data;
reg start,clk,rst;

wire tx,busy;

uart_8b dut(
.data(data),
.start(start),
.clk(clk),
.rst(rst),
.tx(tx),
.busy(busy)
);

initial begin
clk=1'b0;
forever #10 clk=~clk;
end

initial begin

rst=1'b1;
start=1'b0;
data=8'b00000000;
#100;

rst=1'b0;

data=8'b10100101;
start=1'b1;
#20;

start=1'b0;

#1100000;

$finish;

end


endmodule
