`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 22:02:30
// Design Name: 
// Module Name: counter8
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


module Divider(
    input I_CLK,
    input rst_n,
    output O_CLK
    );
    reg tO_CLK = 0;
    parameter rate = 100000000;
    integer cnt = 0;

    always @(posedge I_CLK or negedge rst_n) begin
        if(~rst_n) begin
            tO_CLK=0;
            cnt = 0;
        end

        else if(cnt==rate/2 - 1) begin
            cnt = 0;
            tO_CLK=~tO_CLK;
        end

        else begin
            cnt = cnt + 1;
        end
    end

    assign O_CLK=tO_CLK;

endmodule


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

module display7(
    input[3:0] iData,
    output[6:0] oData
    );
    reg[6:0]oData_tmp;
    always @(*) begin
        case(iData)
            4'b0000: 
                oData_tmp=7'b1000000;
            4'b0001: 
                oData_tmp=7'b1111001;
            4'b0010: 
                oData_tmp=7'b0100100;
            4'b0011: 
                oData_tmp=7'b0110000;
            4'b0100: 
                oData_tmp=7'b0011001;    
            4'b0101: 
                oData_tmp=7'b0010010;
            4'b0110: 
                oData_tmp=7'b0000010;
            4'b0111: 
                oData_tmp=7'b1111000;
            4'b1000: 
                oData_tmp=7'b0000000;
            4'b1001: 
                oData_tmp=7'b0010000;
            default:
                oData_tmp=7'b1111111;
        endcase
    end
    assign oData=oData_tmp;
endmodule


module Counter8(
    input CLK,
    input rst_n,
    output [2:0]oQ,
    output [6:0]oDisplay
    );

    wire [3:0] oQ4; // 辅助的4位信号
    wire O_CLK;
    Divider Div(CLK,rst_n,O_CLK);
    JK_FF FF0(O_CLK, 1, 1, rst_n, oQ[0]);
    JK_FF FF1(O_CLK, oQ[0], oQ[0], rst_n, oQ[1]);
    JK_FF FF2(O_CLK, oQ[1] & oQ[0], oQ[1] & oQ[0], rst_n, oQ[2]);

    assign oQ4 = {1'b0, oQ}; // 将最高位设置为0
    display7 disp(oQ4, oDisplay);

endmodule
