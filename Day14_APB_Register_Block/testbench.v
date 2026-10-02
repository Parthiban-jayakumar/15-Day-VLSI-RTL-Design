`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 11:43:03 PM
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

module apb_tb;

reg PCLK;
reg PRESETn;
reg PSEL;
reg PENABLE;
reg PWRITE;
reg [1:0] PADDR;
reg [7:0] PWDATA;

wire [7:0] PRDATA;
wire PREADY;

apb dut(
    .PCLK(PCLK),
    .PRESETn(PRESETn),
    .PSEL(PSEL),
    .PENABLE(PENABLE),
    .PWRITE(PWRITE),
    .PADDR(PADDR),
    .PWDATA(PWDATA),
    .PRDATA(PRDATA),
    .PREADY(PREADY)
);

initial begin
    PCLK=1'b0;
    forever #5 PCLK=~PCLK;
end

initial begin

    PRESETn=1'b0;
    PSEL=1'b0;
    PENABLE=1'b0;
    PWRITE=1'b0;
    PADDR=2'b00;
    PWDATA=8'b00000000;

    #10;

    PRESETn=1'b1;

    // WRITE REG0

    PSEL=1'b1;
    PENABLE=1'b0;
    PWRITE=1'b1;
    PADDR=2'b00;
    PWDATA=8'b10101010;

    #10;

    PENABLE=1'b1;

    #10;

    PSEL=1'b0;
    PENABLE=1'b0;
    PWRITE=1'b0;

    #10;


    // WRITE REG1

    PSEL=1'b1;
    PENABLE=1'b0;
    PWRITE=1'b1;
    PADDR=2'b01;
    PWDATA=8'b11001100;

    #10;

    PENABLE=1'b1;

    #10;

    PSEL=1'b0;
    PENABLE=1'b0;
    PWRITE=1'b0;

    #10;


    // READ REG0

    PSEL=1'b1;
    PENABLE=1'b0;
    PWRITE=1'b0;
    PADDR=2'b00;

    #10;

    PENABLE=1'b1;

    #10;

    PSEL=1'b0;
    PENABLE=1'b0;

    #10;


    // READ REG1

    PSEL=1'b1;
    PENABLE=1'b0;
    PWRITE=1'b0;
    PADDR=2'b01;

    #10;

    PENABLE=1'b1;

    #10;

    PSEL=1'b0;
    PENABLE=1'b0;

    #20;

    $finish;

end

endmodule
