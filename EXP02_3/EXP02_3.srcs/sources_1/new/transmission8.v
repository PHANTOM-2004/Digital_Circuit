`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 17:56:24
// Design Name: 
// Module Name: transmission8
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


module selector81(
    input iC0,
    input iC1,
    input iC2,
    input iC3,
    input iC4,
    input iC5,
    input iC6,
    input iC7,
    input A,
    input B,
    input C,
    output oZ
    );
    
    assign oZ = (~A && ~B && ~C)? iC0:
            (~A && ~B && C)? iC1:
            (~A && B && ~C)? iC2:
            (~A && B && C)? iC3:
            (A && ~B && ~C)? iC4:
            (A && ~B && C)? iC5:
            (A && B && ~C)? iC6:iC7;

endmodule

module de_selector18(
    input iC,
    input A,
    input B,
    input C,
    output oZ0,
    output oZ1,
    output oZ2,
    output oZ3,
    output oZ4,
    output oZ5,
    output oZ6,
    output oZ7
    );

    or(oZ0,A,B,C,iC);
    or(oZ1,A,B,~C,iC);
    or(oZ2,A,~B,C,iC);
    or(oZ3,A,~B,~C,iC);
    or(oZ4,~A,B,C,iC);
    or(oZ5,~A,B,~C,iC);
    or(oZ6,~A,~B,C,iC);
    or(oZ7,~A,~B,~C,iC);
    
endmodule

module transmission8(
    input[7:0]iData,
    input A,B,C,
    output [7:0] oData
    );
    wire oTmp;
    selector81 ins_sel(iData[0],iData[1],iData[2],iData[3],iData[3],iData[5],iData[6],iData[7],A,B,C,oTmp);
    de_selector18 ins_de(oTmp,A,B,C,oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]);

endmodule
