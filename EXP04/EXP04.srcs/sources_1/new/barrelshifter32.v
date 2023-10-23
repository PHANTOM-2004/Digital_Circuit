`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 19:52:54
// Design Name: 
// Module Name: barrelshifter32
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


module barrelshifter32(
    input[31:0]a,
    input[4:0]b,
    input[1:0]aluc,
    output reg[31:0]c
    );
    
    always@(*)
    begin
        if(aluc[0])
            c = (a<<b);
        else if(aluc[1])
            c=(a>>b);
        else begin
            if(!aluc[31])
                c=(a>>b);
            else begin
                c=(a>>b)|~(32'b11111111111111111111111111111111>>b);
            end
        end
    end
endmodule
