`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 22:37:21
// Design Name: 
// Module Name: Adder
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

module FA(
    input iA,
    input iB,
    input iC,
    output oS,
    output oC
    );

    assign oS=iA^iB^iC;
    assign oC=(iA&iB)|(iA&iC)|(iB&iC);

endmodule

module Adder(
    input [7:0] iData_a,
    input [7:0] iData_b,
    input iC,
    output[7:0] oData,
    output oData_C
    );
    wire o1;
    wire o2;
    wire o3;
    wire o4;
    wire o5;
    wire o6;
    wire o7;



    FA w0(iData_a[0], iData_b[0], iC, oData[0], o1);
    FA w1(iData_a[1], iData_b[1], o1, oData[1], o2);
    FA w2(iData_a[2], iData_b[2], o2, oData[2], o3);
    FA w3(iData_a[3], iData_b[3], o3, oData[3], o4);
    FA w4(iData_a[4], iData_b[4], o4, oData[4], o5);
    FA w5(iData_a[5], iData_b[5], o5, oData[5], o6);
    FA w6(iData_a[6], iData_b[6], o6, oData[6], o7);
    FA w7(iData_a[7], iData_b[7], o7, oData[7], oData_C);

endmodule
