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
    reg [2:0]oData_tmp;
    reg oE_tmp;
    always @(*) begin
        case(iData)
            8'b??????0:
            begin 
                oData_tmp=3'b000;
                oE_tmp=~iEI;
            end
            8'b?????01:
            begin 
                oData_tmp=3'b001;
                oE_tmp=~iEI;
            end
            8'b????011:
            begin
                oData_tmp=3'b010;
                oE_tmp=~iEI;
            end
            8'b???0111:
            begin 
                oData_tmp=3'b011;
                oE_tmp=~iEI;
            end
            8'b??01111:
            begin 
                oData_tmp=3'b100;
                oE_tmp=~iEI;
            end
            8'b?011111:
            begin 
                oData_tmp=3'b101;
                oE_tmp=~iEI;
            end
            8'b0111111:
            begin 
                oData_tmp=3'b110;
                oE_tmp=~iEI;
            end
            8'b1111111:
            begin
                oData_tmp=3'b111;
                oE_tmp=~iEI;
            end
            default:
            begin
                oData_tmp=3'b111;
                oE_tmp=iEI;
            end
        endcase
    end
    assign oEO=oE_tmp;
    assign oData=oData_tmp;
    
endmodule
