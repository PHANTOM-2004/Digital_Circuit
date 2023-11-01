`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 21:54:53
// Design Name: 
// Module Name: DataCompare8_tb
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


module DataCompare8_tb;
    reg [7:0] iData_a;
    reg [7:0] iData_b;
    wire [2:0] oData;

    DataCompare8 inst(iData_a,iData_b,oData);

initial begin
    iData_a=8'b11110000;
    #40 iData_a=8'b10100110;
    #40 iData_a=8'b00001111;
    #40 iData_a=8'b00001111;
    #40 iData_a=8'b10000111;
end

initial begin
    iData_b=8'b11110001;
    #40 iData_b=8'b10101110;
    #40 iData_b=8'b00001110;
    #40 iData_b=8'b10001110;
    #40 iData_b=8'b10000111;
end



endmodule
