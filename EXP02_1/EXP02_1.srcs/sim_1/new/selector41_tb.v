`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/26 20:14:57
// Design Name: 
// Module Name: selector41_tb
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


module selector41_tb;
    reg [3:0] iC0;
    reg [3:0] iC1;
    reg [3:0] iC2;
    reg [3:0] iC3;
    reg iS1;
    reg iS0;
    wire [3:0] oZ;
    
    selector41 sel(.iC0(iC0), .iC1(iC1), .iC2(iC2),.iC3(iC3), .iS0(iS0), .iS1(iS1), .oZ(oZ));
    
    initial
    begin
        iS0 = 0;
        #40 iS0 = 0;
        #40 iS0 = 0;
        #40 iS0 = 0;
        
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        
        #40 iS0 = 0;
        #40 iS0 = 0;
        #40 iS0 = 0;
        #40 iS0 = 0;
        
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
    end
    
    initial
    begin
        iS1 = 0;
        #40 iS1 = 0;
        #40 iS1 = 0;
        #40 iS1 = 0;
        
        #40 iS1 = 0;
        #40 iS1 = 0;
        #40 iS1 = 0;
        #40 iS1 = 0;
        
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
        #40 iS1 = 1;
    end
    
    initial 
    begin
        iC0 = 4'b0001;
        #40 iC1 = 4'b0010;
        #40 iC2 = 4'b0011;
        #40 iC3 = 4'b0100;
        
        #40 iC0 = 4'b0001;
        #40 iC1 = 4'b0010;
        #40 iC2 = 4'b0011;
        #40 iC3 = 4'b0100;
        
        #40 iC0 = 4'b0001;
        #40 iC1 = 4'b0010;
        #40 iC2 = 4'b0011;
        #40 iC3 = 4'b0100;
        
        #40 iC0 = 4'b0001;
        #40 iC1 = 4'b0010;
        #40 iC2 = 4'b0011;
        #40 iC3 = 4'b0100;
    end
endmodule
