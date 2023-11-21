`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 19:53:20
// Design Name: 
// Module Name: Divider
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

module Divider(
    input I_CLK,
    input rst,
    output O_CLK
    );
    reg tO_CLK = 0;
    parameter rate = 20;
    integer cnt = 0;

    always @(posedge I_CLK) begin
        if(rst) begin
            tO_CLK=0;
            cnt = 0;
        end

        else if(cnt==rate/2 - 1) begin
            cnt = 0;
            tO_CLK=~tO_CLK;
        end

        else begin
            cnt = cnt + 1;
        end
    end

    assign O_CLK=tO_CLK;

endmodule
