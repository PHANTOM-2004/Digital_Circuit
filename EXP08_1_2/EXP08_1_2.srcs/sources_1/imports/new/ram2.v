`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 19:50:58
// Design Name: 
// Module Name: ram2
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


module ram2(
    input clk, //存储器时钟信号，上升沿时向ram内部写入数据
    input ena, //存储器有效信号，高电平时存储器才运行，否则输出z
    input wena, //存储器读写有效信号，高电平为写有效，低电平为读有效，与ena同时有效时才可对存储器进行读写
    input [4:0] addr, //输入地址，指定数据读写的地址
    inout [31:0] data //存储器数据线，可传输存储器读出或写入的数据。
    //写入的数据在clk上升沿时被写入
    );

    reg [31:0] ram [31:0];
    reg [31:0] t_data;

    always @(posedge clk or negedge ena) begin
        if(ena)begin
            if(wena)
               ram[addr] = data;
            else
               t_data = ram[addr];
        end
        else
            t_data = 32'bz;
    end

    assign data = t_data;

endmodule
