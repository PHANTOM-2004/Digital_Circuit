`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:29:24
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input CLK, // 时钟信号 ，上升沿有效
    input J, // 输入 信号 J
    input K, // 输入 信号 K
    input RST_n, // 复位信号 ，低电平有效
    output reg Q1,// 输出 信号 Q
    output reg Q2 // 输出 信号
);

    always @(posedge CLK or negedge RST_n) begin
        if (!RST_n) begin
            Q1=0;
            Q2=1;
        end
        else begin
            if(J&K) begin
                Q1=~Q1;
                Q2=~Q2;
            end
            else if(~J&~K)
                ;
            else begin
                Q1=J;
                Q2=K;
            end
        end
    end

endmodule