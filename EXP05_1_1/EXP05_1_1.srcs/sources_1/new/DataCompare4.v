`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 19:17:09
// Design Name: 
// Module Name: DataCompare4
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
    // reg [2:0]oData_tmp;
    // always @(*) begin
    //     if(iData_a==iData_b) begin
    //         oData=iData;        end 
    //     else if(iData_a>iData_b)
    //         oData_tmp=3'b100;
    //     else
    //         oData_tmp=3'b010;
    // end
endmodule
