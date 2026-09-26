`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 09:31:29 PM
// Design Name: 
// Module Name: counter_td
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

module counter_3bit_tb;
reg clk;
reg reset;
wire [2:0] q;
counter_3bit dut(.clk(clk),.rst(rst),.q(q));

initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end
initial begin
 reset = 1'b1;
  #10;
  reset = 1'b0;
  #80;
   $finish;

end

endmodule
