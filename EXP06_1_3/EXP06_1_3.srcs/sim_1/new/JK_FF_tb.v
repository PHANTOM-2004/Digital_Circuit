`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 21:14:29
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb;
    reg CLK; // 时钟信号 ，上升沿有效
    reg J; // 输入 信号 J
    reg K; // 输入 信号 K
    reg RST_n; // 复位信号 ，低电平有效
    wire Q1;// 输出 信号 Q
    wire Q2;// 输出 信号

JK_FF inst(CLK,J,K,RST_n,Q1,Q2);

parameter t=40;

initial begin
    CLK=0;
    repeat(t) begin
        #20 CLK=~CLK;
    end
end

initial begin
    J=0;
    #40 J=0;
    #40 J=1;
    #40 J=1;

    #40 J=0;
    #40 J=0;
    #40 J=1;
    #40 J=1;
end

initial begin
    K=0;
    #40 K=1;
    #40 K=0;
    #40 K=1;

    #40 K=0;
    #40 K=1;
    #40 K=0;
    #40 K=1;
end

initial begin
    RST_n=1;

    #130 RST_n=0;
end

endmodule
