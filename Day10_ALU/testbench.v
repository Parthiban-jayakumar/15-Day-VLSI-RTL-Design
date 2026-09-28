`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2026 10:32:12 PM
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

module alu_4b_tb;

reg [3:0]a,b;
reg [2:0]s;
wire [3:0]y;
wire c,z;

alu_4b dut(
.a(a),
.b(b),
.s(s),
.y(y),
.c(c),
.z(z)
);

initial begin

a=4'b0101;
b=4'b0011;

s=3'b000; #10;
s=3'b001; #10;
s=3'b010; #10;
s=3'b011; #10;
s=3'b100; #10;
s=3'b101; #10;

a=4'b1111;
b=4'b0001;
s=3'b000; #10;

a=4'b0011;
b=4'b0011;
s=3'b001; #10;

$finish;

end

endmodule
