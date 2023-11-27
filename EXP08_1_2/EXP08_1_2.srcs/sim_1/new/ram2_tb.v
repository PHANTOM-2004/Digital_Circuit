`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 19:57:00
// Design Name: 
// Module Name: ram2_tb
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


module ram2_tb;
    reg clk; //存储器时钟信号，上升沿时向ram内部写入数据
    reg ena; //存储器有效信号，高电平时存储器才运行，否则输出z
    reg wena; //存储器读写有效信号，高电平为写有效，低电平为读有效，与ena同时有效时才可对存储器进行读写
    reg [4:0] addr; //输入地址，指定数据读写的地址
    wire [31:0] data; //存储器数据线，可传输存储器读出或写入的数据。
    //写入的数据在clk上升沿时被写入
    reg [31:0]tmp;
    ram2 inst(clk,ena,wena,addr,data);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        ena = 0;
        #40 ena = 1;        
    end

    initial begin
        wena = 1;
        #200 wena = 0;
    end


    initial begin
        addr = 32'b1111;      

        #40 addr = 32'b1111;
        #40 addr = 32'b1101;
        #40 addr = 32'b0001;
        #40 addr = 32'b1011;

        #40 addr = 32'b1111;
        #40 addr = 32'b1101;
        #40 addr = 32'b0001;
        #40 addr = 32'b1011;
    end

    initial begin
        tmp = 32'b1111;

        #40 tmp = 32'b1111;
        #40 tmp = 32'b1101;
        #40 tmp = 32'b0001;
        #40 tmp = 32'b1011;
    end


    assign data = wena ? tmp:32'bz;
endmodule
