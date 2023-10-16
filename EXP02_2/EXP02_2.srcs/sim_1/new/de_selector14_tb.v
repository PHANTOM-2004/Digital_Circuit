`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 17:27:00
// Design Name: 
// Module Name: de_selector14_tb
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


module de_selector14_tb;
    reg iC;
    reg iS1;
    reg iS0;
    wire oZ0,oZ1,oZ2,oZ3;
    parameter size=4;
    
    de_selector14 ins(iC,iS1,iS0,oZ0,oZ1,oZ2,oZ3);
    initial begin
        iS0 = 0;
        #120 iS0 = 1;
        #120 iS0 = 0;        
        #120 iS0 = 1;
    end
    
    initial begin
        iS1 = 0;
        #120 iS1 = 0;
        #120 iS1 = 1;
        #120 iS1 = 1;
    end           
    
    initial begin
        iC = 0;
        #60 iC = 1;
        #60 iC = 0;
        #60 iC = 1;
        #60 iC = 0;
        #60 iC = 1;
        #60 iC = 0;
        #60 iC = 1;
    end
    
endmodule
