`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2026 11:56:03 PM
// Design Name: 
// Module Name: gg
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

module universal_shift_register_tb;

reg [3:0] d;
reg s_r,s_l,clk;
reg [1:0] s;
wire [3:0] q;

universal_shift_register dut(
.d(d),
.s_r(s_r),
.s_l(s_l),
.clk(clk),
.s(s),
.q(q)
);

initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin
d=4'b1011;
s_r=1'b0;
s_l=1'b0;

s=2'b11; #10;
s=2'b00; #10;
s_r=1'b0;
s=2'b01; #10;
s_r=1'b1;
s=2'b01; #10;
s_l=1'b0;
s=2'b10; #10;
s_l=1'b1;
s=2'b10; #10;
d=4'b1100;
s=2'b11; #10;

$finish;
end

endmodule
