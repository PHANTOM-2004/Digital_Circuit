`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 22:37:05
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb;
    reg [7:0] iData_a;
    reg [7:0] iData_b;
    reg iC;
    wire [7:0] oData;
    wire oData_C;
    
    Adder add_inst(iData_a,iData_b,iC,oData,oData_C);

    initial begin
        iData_a=8'b00010001;
        #20 iData_a=8'b11111110;
        #20 iData_a=8'b00000001;

        #20 iData_a=8'b00010001;
        #20 iData_a=8'b11111110;
        #20 iData_a=8'b00000001;

    end

    initial begin
        iData_b=8'b00010001;
        #20 iData_b=8'b00000001;
        #20 iData_b=8'b11101111;

        #20 iData_b=8'b00010001;
        #20 iData_b=8'b00000001;
        #20 iData_b=8'b11101111;
    end

    initial begin
        iC=0;
        #20 iC=0;
        #20 iC=0;
        #20 iC=1;
        #20 iC=1;
        #20 iC=1;
    end
endmodule
