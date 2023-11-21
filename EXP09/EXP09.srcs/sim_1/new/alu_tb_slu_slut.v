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


module alu_tb_slu_slut;

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
        aluc = 4'b1010;
        a = 32'hffffffff;
        b = 32'h80000000;        

        #40 
        aluc = 4'b1010;
        a = 32'h0000ffff;
        b = 32'h00000000;       

        #40 
        aluc = 4'b1010;
        a = 32'hffffffff;
        b = 32'h0000ffff;    

// 1011
        #40 
        aluc = 4'b1011;
        a = 32'h00000001;
        b = 32'hffffffff;   

        #40 
        aluc = 4'b1011;
        a = 32'hffffffff;
        b = 32'h80000000;       

        #40 
        aluc = 4'b1011;
        a = 32'h0000ffff;
        b = 32'h00000000;   

        #40 
        aluc = 4'b1011;
        a = 32'hffffffff;
        b = 32'h0000ffff;   
    end


endmodule
