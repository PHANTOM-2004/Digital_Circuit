`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 23:09:29
// Design Name: 
// Module Name: encoder83_Pri
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


module encoder83_Pri(
    input [7:0] iData,
    input iEI,
    output [2:0] oData,
    output oEO
    );

    reg [2:0] oData_tmp;
    reg oEO_tmp;

    always @(*) begin
        oData_tmp = 3'b111;
        if (iEI) 
            oEO_tmp = 1;
        else if (iData == 8'b11111111) 
            oEO_tmp = 0;
        else begin
            oEO_tmp = 1;
            if (!iData[7]) 
                oData_tmp = 3'b000;
            else if (!iData[6]) 
                oData_tmp = 3'b001;
            else if (!iData[5]) 
                oData_tmp = 3'b010;
            else if (!iData[4]) 
                oData_tmp = 3'b011;
            else if (!iData[3]) 
                oData_tmp = 3'b100;
            else if (!iData[2])
                 oData_tmp = 3'b101;
            else if (!iData[1])
                 oData_tmp = 3'b110;
            else if (!iData[0])
                 oData_tmp = 3'b111;
            else
                ;
        end
    end


    assign oEO=oEO_tmp;
    assign oData=oData_tmp;

endmodule
