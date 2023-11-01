`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 21:47:25
// Design Name: 
// Module Name: DataCompare8
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
module DataCompare4(
    input [3:0] iData_a,
    input [3:0] iData_b,
    input [2:0] iData,
    output [2:0] oData
    );
    
    assign oData = iData_a==iData_b? 
    iData:iData_a>iData_b?
    3'b100:3'b010;
endmodule


module DataCompare8(
    input [7:0] iData_a,
    input [7:0] iData_b,
    output [2:0] oData
    );
    reg [2:0]iData_low=3'b001;
    wire [2:0]oData_tmp;
    DataCompare4 low4bits(iData_a[3:0],iData_b[3:0],iData_low,oData_tmp);
    DataCompare4 high4bits(iData_a[7:4],iData_b[7:4],oData_tmp,oData);
endmodule
