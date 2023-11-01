`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 19:25:29
// Design Name: 
// Module Name: DataCompare4_tb
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


module DataCompare4_tb;
    reg [3:0]iData_a;
    reg [3:0]iData_b;
    reg [2:0]iData;
    wire [2:0]oData;
DataCompare4 inst_datacmp(iData_a,iData_b,iData,oData);

initial begin
    iData=3'b001;
    iData_a=4'b0000;
    #40 iData_a=4'b0110;
    #40 iData_a=4'b1111;
    #40 iData_a=4'b1111;
    #40 iData_a=4'b0111;

    #40 iData=3'b100;
    #40 iData=3'b010;
    #40 iData=3'b001;

end

initial begin
    iData_b=4'b0001;
    #40 iData_b=4'b1110;
    #40 iData_b=4'b1110;
    #40 iData_b=4'b1110;
    #40 iData_b=4'b0111;
end

endmodule
