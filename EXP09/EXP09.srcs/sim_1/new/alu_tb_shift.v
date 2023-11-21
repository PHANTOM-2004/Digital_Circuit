`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 23:04:19
// Design Name: 
// Module Name: alu_tb_shift
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


module alu_tb_shift;

    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] aluc;
    wire [31:0] r;
    wire zero;
    wire carry;
    wire negative;
    wire overflow;

    alu inst(a,b,aluc,r,zero,carry,negative,overflow);


    //test addu
    initial begin
        aluc = 4'b1011;
        a = 32'b1000_0010_0000;
        b = 32'b1000_0010_0000;        

        #40 
        aluc = 4'b1010;
        a = 32'b0000_0000_0000;
        b = 32'b1000_0000_0000;        

        #40 
        aluc = 4'b1100;
        b = 32'b1011_0110_0000_0000_0000_0000_0000_0010;
        a = 32'b0000_0000_0000_0000_0000_0000_0000_1000;

        #40 
        aluc = 4'b1111;
        b = 32'b1011_0110_0000_0000_0000_0000_0000_0010;
        a = 32'b0000_0000_0000_0000_0000_0000_0000_1000;

        #40 
        aluc = 4'b1101;
        a = 32'b1111_0110_0000_0000_0000_0000_0000_0010;
        b = 32'b0000_0010_0000_0001_1111_1111_0000_0000;
    end


endmodule
