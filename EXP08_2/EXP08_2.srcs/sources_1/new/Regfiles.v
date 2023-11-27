`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 20:17:23
// Design Name: 
// Module Name: Regfiles
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
module decoder(
    input[2:0] iData,
    input[1:0] iEna,
    output[7:0] oData
    );

    assign oData[0]=
    ~iEna[1]|iEna[0]|iData[0]|iData[1]|iData[2];

    assign oData[1]=
    ~iEna[1]|iEna[0]|~iData[0]|iData[1]|iData[2];

    assign oData[2]=
    ~iEna[1]|iEna[0]|iData[0]|~iData[1]|iData[2];

    assign oData[3]=
    ~iEna[1]|iEna[0]|~iData[0]|~iData[1]|iData[2];

    assign oData[4]=
    ~iEna[1]|iEna[0]|iData[0]|iData[1]|~iData[2];

    assign oData[5]=
    ~iEna[1]|iEna[0]|~iData[0]|iData[1]|~iData[2];

    assign oData[6]=
    ~iEna[1]|iEna[0]|iData[0]|~iData[1]|~iData[2];

    assign oData[7]=
    ~iEna[1]|iEna[0]|~iData[0]|~iData[1]|~iData[2];

endmodule

module decoder5to32(
    input[4:0] iData,
    input[1:0] iEna,
    output[7:0] oData
    );

    assign oData[0]=
    ~iEna[1]|iEna[0]|iData[0]|iData[1]|iData[2];

    assign oData[1]=
    ~iEna[1]|iEna[0]|~iData[0]|iData[1]|iData[2];

    assign oData[2]=
    ~iEna[1]|iEna[0]|iData[0]|~iData[1]|iData[2];

    assign oData[3]=
    ~iEna[1]|iEna[0]|~iData[0]|~iData[1]|iData[2];

    assign oData[4]=
    ~iEna[1]|iEna[0]|iData[0]|iData[1]|~iData[2];

    assign oData[5]=
    ~iEna[1]|iEna[0]|~iData[0]|iData[1]|~iData[2];

    assign oData[6]=
    ~iEna[1]|iEna[0]|iData[0]|~iData[1]|~iData[2];

    assign oData[7]=
    ~iEna[1]|iEna[0]|~iData[0]|~iData[1]|~iData[2];

endmodule



module selector41(
    input [3:0]iC0,
    input [3:0]iC1,
    input [3:0]iC2,
    input [3:0]iC3,
    input iS1,
    input iS0,
    output [3:0]oZ
    );
    
    assign oZ[0]=(~iS0&&~iS1)?iC0[0]:
                (iS0&&~iS1)?iC1[0]:
                (~iS0&&iS1)?iC2[0]:iC3[0];
                
    assign oZ[1]=(~iS0&&~iS1)?iC0[1]:
                (iS0&&~iS1)?iC1[1]:
                (~iS0&&iS1)?iC2[1]:iC3[1];           
    
    assign oZ[2]=(~iS0&&~iS1)?iC0[2]:
                (iS0&&~iS1)?iC1[2]:
                (~iS0&&iS1)?iC2[2]:iC3[2];
                
    assign oZ[3]=(~iS0&&~iS1)?iC0[3]:
                (iS0&&~iS1)?iC1[3]:
                (~iS0&&iS1)?iC2[3]:iC3[3];              

endmodule



module A_D_FF(
    input clk,
    input rst,
    input ena,
    input D,
    output reg Q1
    );

    always @(posedge clk or posedge rst)
    begin
        if (rst) begin
            Q1 = 0;
        end
        else begin
            if(ena)
                Q1 = D;
            else
                ;
        end
    end

endmodule



/*32bit register*/
module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output [31:0] data_out
    );

    A_D_FF A1(clk,rst,ena,data_in[0],data_out[0]);
    A_D_FF A2(clk,rst,ena,data_in[1],data_out[1]);
    A_D_FF A3(clk,rst,ena,data_in[2],data_out[2]);
    A_D_FF A4(clk,rst,ena,data_in[3],data_out[3]);

    A_D_FF A5(clk,rst,ena,data_in[4],data_out[4]);
    A_D_FF A6(clk,rst,ena,data_in[5],data_out[5]);
    A_D_FF A7(clk,rst,ena,data_in[6],data_out[6]);
    A_D_FF A8(clk,rst,ena,data_in[7],data_out[7]);

    A_D_FF A9(clk,rst,ena,data_in[8],data_out[8]);
    A_D_FF A10(clk,rst,ena,data_in[9],data_out[9]);
    A_D_FF A11(clk,rst,ena,data_in[10],data_out[10]);
    A_D_FF A12(clk,rst,ena,data_in[11],data_out[11]);

    A_D_FF A13(clk,rst,ena,data_in[12],data_out[12]);
    A_D_FF A14(clk,rst,ena,data_in[13],data_out[13]);
    A_D_FF A15(clk,rst,ena,data_in[14],data_out[14]);
    A_D_FF A16(clk,rst,ena,data_in[15],data_out[15]);

    A_D_FF A17(clk,rst,ena,data_in[16],data_out[16]);
    A_D_FF A18(clk,rst,ena,data_in[17],data_out[17]);
    A_D_FF A19(clk,rst,ena,data_in[18],data_out[18]);
    A_D_FF A20(clk,rst,ena,data_in[19],data_out[19]);

    A_D_FF A21(clk,rst,ena,data_in[20],data_out[20]);
    A_D_FF A22(clk,rst,ena,data_in[21],data_out[21]);
    A_D_FF A23(clk,rst,ena,data_in[22],data_out[22]);
    A_D_FF A24(clk,rst,ena,data_in[23],data_out[23]);

    A_D_FF A25(clk,rst,ena,data_in[24],data_out[24]);
    A_D_FF A26(clk,rst,ena,data_in[25],data_out[25]);
    A_D_FF A27(clk,rst,ena,data_in[26],data_out[26]);
    A_D_FF A28(clk,rst,ena,data_in[27],data_out[27]);

    A_D_FF A29(clk,rst,ena,data_in[28],data_out[28]);
    A_D_FF A30(clk,rst,ena,data_in[29],data_out[29]);
    A_D_FF A31(clk,rst,ena,data_in[30],data_out[30]);
    A_D_FF A32(clk,rst,ena,data_in[31],data_out[31]);


endmodule


module Regfiles(
    input clk, //寄存器组时钟信号，下降沿写入数据
    input rst, //异步复位信号，高电平时全部寄存器置零
    input we, //寄存器读写有效信号，高电平时允许寄存器写入数据，
    //低电平时允许寄存器读出数据
    input [4:0] raddr1, //所需读取的寄存器的地址
    input [4:0] raddr2, //所需读取的寄存器的地址
    input [4:0] waddr, //写寄存器的地址
    input [31:0] wdata, //写寄存器数据，数据在clk下降沿时被写入
    output [31:0] rdata1, //raddr1所对应寄存器的输出数据
    output [31:0] rdata2 //raddr2所对应寄存器的输出数据
    );
    
    

endmodule
