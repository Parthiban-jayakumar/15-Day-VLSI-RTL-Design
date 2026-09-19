`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2026 06:47:17 PM
// Design Name: 
// Module Name: logic_gate_tb
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


module logic_gate_tb;
reg a,b;

    wire y_and;
    wire y_or;
    wire y_not;
    wire y_nand;
    wire y_nor;
    wire y_xor;
    wire y_xnor;
    
    logic_gates dut(.a(a),.b(d),.y_and(y_and),.y_or(y_or),.y_not(y_not),.y_nand(y_nand),.y_nor(y_nor),.y_xor(y_xnor),.y_xnor(y_xnor));
    
    initial begin
    
    a=0; b=0;
    
    #10
    
    a=0; b=1;
    
    #10;
    
    a=1; b=0;
    
    #10
    
    a=1; b=1;
    
    $finish;
    
    end 
    endmodule



