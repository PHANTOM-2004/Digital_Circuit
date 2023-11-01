`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 23:22:28
// Design Name: 
// Module Name: encoder83_Pri_tb
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


module encoder83_Pri_tb;
    reg iEI;
    wire oEO;
    reg [7:0]iData;
    wire [2:0] oData;

    encoder83_Pri my_encoder_pri(iData,iEI,oData,oEO);

    initial begin
        iEI=0;
    end

    initial begin
        iData=8'b11111111;
        #40 iData=8'b11111110;
        #40 iData=8'b11111101;
        #40 iData=8'b11111011;
        #40 iData=8'b11110111;
        #40 iData=8'b11101111;
        #40 iData=8'b11011111;
        #40 iData=8'b10111111;
        #40 iData=8'b01111111;


        //#80 iEI=1;
        // #40 iData=8'b00000000;
        // #40 iData=8'b00000001;
        // #40 iData=8'b00000011;
        // #40 iData=8'b00000111;
        // #40 iData=8'b00001111;
        // #40 iData=8'b00011111;
        // #40 iData=8'b00111111;
        // #40 iData=8'b01111111;
        // #40 iData=8'b11111111;


        // #80 iEI=0;
        // #40 iData=8'b00000000;
        // #40 iData=8'b00000000;
        // #40 iData=8'b00000001;
        // #40 iData=8'b00000011;
        // #40 iData=8'b00000111;
        // #40 iData=8'b00001111;
        // #40 iData=8'b01111111;
        // #40 iData=8'b00011111;
        // #40 iData=8'b00111111;
        // #40 iData=8'b11111111;

    end


endmodule
