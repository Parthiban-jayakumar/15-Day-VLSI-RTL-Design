`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2026 09:37:36 PM
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

module tlc_tb;

reg clk;
reg reset;
reg vehicle;

wire red;
wire green;
wire yellow;

tlc dut(
    .clk(clk),
    .reset(reset),
    .vehicle(vehicle),
    .red(red),
    .green(green),
    .yellow(yellow)
);

initial begin

clk=1'b0;
forever #5 clk=~clk;

end


initial begin
A
reset=1'b1;
vehicle=1'b0;

#10;

reset=1'b0;

vehicle=1'b1;

#200;

vehicle=1'b0;

#100;

vehicle=1'b1;

#100;

$finish;

end

endmodule
