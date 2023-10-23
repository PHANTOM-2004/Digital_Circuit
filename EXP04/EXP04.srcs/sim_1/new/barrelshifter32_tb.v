`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 20:02:58
// Design Name: 
// Module Name: barrelshifter32_tb
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


module barrelshifter32_tb;
reg [31:0]a;
reg [4:0]b;
reg [1:0]aluc;
wire [31:0]c;

barrelshifter32 instshifter(a,b,aluc,c);

initial begin
    a=32'b10000000100000001000000010000000;
    aluc=2'b00;

    #20 b=3'b000;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b10;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b01;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b11;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40;
    a=32'b00000000100000001000000010000000;
    aluc=2'b00;

    #20 b=3'b000;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b10;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b01;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

    #40 aluc=2'b11;
    #20 b=5'b01;
    #20 b=5'b110;
    #20 b=5'b0;
    #20 b=5'b11111;

end

endmodule
