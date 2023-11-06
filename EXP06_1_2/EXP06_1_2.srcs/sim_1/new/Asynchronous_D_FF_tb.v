`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 19:30:11
// Design Name: 
// Module Name: Sychronous_D_FF_tb
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


module Asynchronous_D_FF_tb;
    reg CLK;
    reg D;
    reg RST_n;
    wire Q1;
    wire Q2;

Asynchronous_D_FF inst(CLK,D,RST_n,Q1,Q2);
parameter t=20;

initial begin
    CLK=0;
    repeat(t) begin
        #40 CLK=~CLK;
    end
end

initial begin
    RST_n=0;
    D=1;
    #40 D=0;
    #40 D=1;
    #40 D=0;
    #40 D=1;
    #40 RST_n=0;
end

initial begin
    #60 RST_n=0;
    #60 RST_n=1;
    #40 RST_n=0;
end

endmodule
