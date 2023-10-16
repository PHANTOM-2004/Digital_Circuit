`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 20:11:00
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg[1:0] iEna;
    reg[2:0] iD;
    wire[7:0] out;

    decoder testdecoder(iD,iEna,out);

    initial begin
        iEna[1]=1;
        iEna[0]=0;

        #320 iEna[1]=0;
        iEna[0]=1;

        #320 iEna[1]=1;
        iEna[1]=1;

        #320 iEna[1]=0;
        iEna[1]=0;
    end

    initial begin
        iD=3'b000;
        #40 iD=3'b001;
        #40 iD=3'b010;
        #40 iD=3'b011;
        #40 iD=3'b100;
        #40 iD=3'b101;
        #40 iD=3'b110;
        #40 iD=3'b111;

        #40 iD=3'b000;
        #40 iD=3'b001;
        #40 iD=3'b010;
        #40 iD=3'b011;
        #40 iD=3'b100;
        #40 iD=3'b101;
        #40 iD=3'b110;
        #40 iD=3'b111;

        #40 iD=3'b000;
        #40 iD=3'b001;
        #40 iD=3'b010;
        #40 iD=3'b011;
        #40 iD=3'b100;
        #40 iD=3'b101;
        #40 iD=3'b110;
        #40 iD=3'b111;

        #40 iD=3'b000;
        #40 iD=3'b001;
        #40 iD=3'b010;
        #40 iD=3'b011;
        #40 iD=3'b100;
        #40 iD=3'b101;
        #40 iD=3'b110;
        #40 iD=3'b111;
    end

endmodule
