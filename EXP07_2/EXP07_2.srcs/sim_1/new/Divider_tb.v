`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 20:06:27
// Design Name: 
// Module Name: Divider_tb
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


module Divider_tb;
    reg I_CLK;
    reg rst;
    wire O_CLK;
    Divider inst(I_CLK,rst,O_CLK);

    parameter t = 400;
    initial begin
        I_CLK=0;
        repeat(t) begin
            #5 I_CLK=~I_CLK;
        end
    end


    initial begin
        rst = 1;
        #20 rst = 0;
    end

endmodule
