`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/07 09:11:17
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb;

    reg clk;
    reg rst;
    reg ena;
    reg [31:0] data_in;
    wire [31:0] data_out;
    pcreg ins(clk,rst,ena,data_in,data_out);

    parameter t=40;

    initial begin
        clk=0;
        repeat(t) begin
            #40 clk=~clk;
        end
    end


    initial begin
         data_in=32'b1000_0010_1111_0101;
        #80 data_in=32'b1001_0010_1111_1000;
        #80 data_in=32'b1010_0010_1001_0111;
        #80 data_in=32'b1100_0110_1111_1101;
        #80 data_in=32'b1000_0111_1101_1001;
        #80 data_in=32'b1010_0010_0111_1111;
        #80 data_in=32'b1000_0110_1110_0000;
        #80 data_in=32'b1000_0010_1111_0101;
        #80 data_in=32'b1000_0010_0111_0001;
        #80 data_in=32'b1000_0010_1101_0111;
    end


    initial begin
        rst = 0 ;
        #40 rst=1;
        #160 rst=0;
    end


    initial begin
        ena=1;
        #80 ena=0;
        #80 ena=1;
    end
endmodule
