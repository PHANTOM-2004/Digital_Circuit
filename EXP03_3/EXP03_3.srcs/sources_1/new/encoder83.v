`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 21:44:43
// Design Name: 
// Module Name: encoder83
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


module encoder83(
    input[7:0] iData,
    output[2:0] oData
    );

    assign oData[2]=iData[7]|iData[6]|iData[5]|iData[4];

    assign oData[1]=iData[7]|iData[6]|iData[3]|iData[2];

    assign oData[0]=iData[7]|iData[5]|iData[3]|iData[1];


endmodule
