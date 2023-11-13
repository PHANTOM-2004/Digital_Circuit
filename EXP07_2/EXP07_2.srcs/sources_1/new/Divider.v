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

    always @(posedge I_CLK or negedge rst) begin
        if(rst)
            tO_CLK=0;
        else begin
            if(cnt==rate) begin
                tO_CLK=~tO_CLK;
                cnt = 0;
            end
            else begin
                cnt = cnt + 1;
            end
        end
    end

    assign O_CLK=tO_CLK;

endmodule
