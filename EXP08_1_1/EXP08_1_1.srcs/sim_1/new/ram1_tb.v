`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 19:33:38
// Design Name: 
// Module Name: ram1_tb
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


module ram1_tb;

    reg clk; //存储器时钟信号，上升沿时向ram内部写入数据
    reg ena; //存储器有效信号，高电平时存储器才运行，否则输出z
    reg wena; //存储器读写有效信号，高电平为写有效，低电平为读有效，与ena同时有效时才可对存储器进行读写
    reg [4:0] addr; //输入地址，指定数据读写的地址
    reg [31:0] data_in; //存储器写入的数据，在clk上升沿时被写入
    wire [31:0] data_out; //存储器读出的数据

    ram1 inst(clk,ena,wena,addr,data_in,data_out);

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
        data_in = 32'b1111;

        #40 data_in = 32'b1111;
        #40 data_in = 32'b1101;
        #40 data_in = 32'b0001;
        #40 data_in = 32'b1011;



    end
endmodule
