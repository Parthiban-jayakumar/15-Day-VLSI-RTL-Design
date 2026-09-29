`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2026 06:35:14 PM
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

module fifo_tb;

reg [3:0]data_in;
reg wr_en,r_en,clk;
reg reset;

wire [3:0]data_out;
wire full,empty;

fifo dut(
.data_in(data_in),
.wr_en(wr_en),
.r_en(r_en),
.clk(clk),
.reset(reset),
.data_out(data_out),
.full(full),
.empty(empty)
);

initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin

reset=1'b1;
wr_en=1'b0;
r_en=1'b0;
data_in=4'b0000;
#10;

reset=1'b0;

data_in=4'b1010;
wr_en=1'b1;
#10;

data_in=4'b1100;
#10;

data_in=4'b0110;
#10;

wr_en=1'b0;
r_en=1'b1;
#10;

#10;

#10;

$finish;

end

endmodule
