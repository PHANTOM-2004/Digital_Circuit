`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 17:56:43
// Design Name: 
// Module Name: transmission8_tb
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


module transmission8_tb;
    reg [7:0]iData;
    wire [7:0]oData;
    reg A;
    reg B;
    reg C;
    
    transmission8 ins(iData,A,B,C,oData);
    
    initial begin
        A = 0;
        #40 A = 0;
        #40 A = 0;
        #40 A = 0;
        #40 A = 1;
        #40 A = 1;
        #40 A = 1;
        #40 A = 1;
    end
    
    initial begin
        B = 0;
        #40 B = 0;
        #40 B = 1;
        #40 B = 1;
        #40 B = 0;
        #40 B = 0;
        #40 B = 1;
        #40 B = 1;
    end
    
    initial begin
        C = 0;
        #40 C = 1;
        #40 C = 0;
        #40 C = 1;
        #40 C = 0;
        #40 C = 1;
        #40 C = 0;
        #40 C = 1;
    end
    
    
    initial
    begin
        iData[0] = 0;
        iData[1] = 0;
        iData[2] = 0;
        iData[3] = 0;
        iData[4] = 0;
        iData[5] = 0;
        iData[6] = 0;
        iData[7] = 0;
    end
    
endmodule
