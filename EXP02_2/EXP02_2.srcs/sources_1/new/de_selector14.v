`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 17:21:28
// Design Name: 
// Module Name: de_selector14
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


module de_selector14(
    input iC,
    input iS1,
    input iS0,
    output oZ0,
    output oZ1,
    output oZ2,
    output oZ3
    );
    or(oZ0,iS1,iS0,iC);
    or(oZ1,iS1,~iS0,iC);
    or(oZ2,~iS1,iS0,iC);
    or(oZ3,~iS1,~iS0,iC);
endmodule
