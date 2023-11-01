`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 22:19:50
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
    reg iA;
    reg iB;
    reg iC;
    wire oS;
    wire oC;
    FA fa_ins(iA,iB,iC,oS,oC);

    initial begin
        iA=0;
        #20 iA=1;
        #20 iA=0;
        #20 iA=1;    

        #20 iA=0;
        #20 iA=1;
        #20 iA=0;
        #20 iA=1;
    end

    initial begin
        iB=0;
        #20 iB=0;
        #20 iB=1;
        #20 iB=1;

        #20 iB=0;
        #20 iB=0;
        #20 iB=1;
        #20 iB=1;
    end

    initial begin
        iC=0;
        #20 iC=0;
        #20 iC=0;
        #20 iC=0;

        #20 iC=1;
        #20 iC=1;
        #20 iC=1;
        #20 iC=1;
    end
endmodule
