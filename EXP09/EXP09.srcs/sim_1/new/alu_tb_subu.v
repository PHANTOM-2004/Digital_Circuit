`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 21:59:46
// Design Name: 
// Module Name: alu_tb
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


module alu_tb_subu;

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

        aluc = 4'b0011;
        a = 32'b1000_0010_0000;
        b = 32'b1000_0010_0000;

        #40 
        aluc = 4'b0011;
        a = 32'b0000_0000_0000;
        b = 32'b1000_0000_0000;        

        #40 
        aluc = 4'b0011;
        a = 32'b1000_0010_1111_0000_1111_0000_0000_0010;
        b = 32'b1000_0010_0000_0001_0000_0000_0000_0000;

        #40 
        aluc = 4'b0011;
        a = 32'b0011_0110_0000_0000_0000_0000_0000_0010;
        b = 32'b1000_0010_0000_0001_0000_0000_0000_0000;
    end


endmodule
