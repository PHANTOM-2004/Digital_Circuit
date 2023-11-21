`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 19:27:41
// Design Name: 
// Module Name: Counter8_tb
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


module Counter8_tb;
    reg clk;
    reg rst_n;
    wire [2:0]oQ;
    wire [6:0]display;
    Counter8 inst(clk,rst_n,oQ,display);
    parameter t = 40;
    initial begin
        clk=0;
        repeat(t) begin
            #40 clk=~clk;
        end
    end

    initial begin
        rst_n=0;
        #40 rst_n=1;
        #600 rst_n=0;
    end
endmodule
