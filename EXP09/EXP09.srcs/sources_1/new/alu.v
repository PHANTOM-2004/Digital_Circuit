`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 19:29:51
// Design Name: 
// Module Name: alu
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



module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
    reg [32:0] tmp;

    always @(*) begin
        
        casex(aluc)

            4'b0000:/*Addu*/begin
                {carry, r} = a + b;
                negative = r[31];
                zero = !r;
            end

            4'b0010:/*Add*/begin
                r = a + b;
                negative = r[31];
                overflow = 
                (a[31]&b[31]&~r[31])|(~a[31]&~b[31]&r[31]);
                zero = !r;
            end
            4'b0001:/*Subu*/begin
                r = a - b;
                negative = r[31];
                tmp = 33'b1_00000000_00000000_00000000_00000000 + a - b;
                carry = ~tmp[32];
                zero = !r;
            end
            4'b0011:/*Sub*/begin
                r = a - b;
                negative = r[31];
                overflow = 
                (~a[31]&b[31]&r[31])|(a[31]&~b[31]&~r[31]);
                zero = !r;
            end
            4'b0100:/*And*/begin
                r = a & b;
                negative = r[31];
                zero = !r;
            end
            4'b0101:/*Or*/begin
                r = a | b;
                negative = r[31];
                zero = !r;
            end
            4'b0110:/*Xor*/begin
                r = a ^ b;
                negative = r[31];
                zero = !r;
            end
            4'b0111:/*Nor*/begin
                r = ~(a | b);
                negative = r[31];
                zero = !r;
            end
            4'b100x:/*Lui*/begin
                r = {b[15:0],16'b0};
                negative = r[31];
                zero = !r;
            end
            4'b1011:/*Slt*/begin
                if(a[31]==b[31])
                    r = (a < b) ? 1: 0;
                else 
                    r = a[31];
                negative = r[0];
                zero = (a==b)?1:0;
            end
            4'b1010:/*Sltu*/begin
                r = (a < b) ? 1: 0;
                negative = r[31];
                carry = (a < b) ? 1: 0;
                zero = (a==b)?1:0;
            end
            4'b1100:/*Sra*/begin
                if(!b[31])
                    r=(b>>(a-1));
                else
                    r=(b>>(a-1))|~(32'b11111111111111111111111111111111>>(a-1));
                carry = r[0];
                if(!b[31])
                    r = r>>1;
                else begin
                    r = r>>1;
                    r = {1'b1,r[30:0]};
                end
                negative = r[31];
                zero = !r;
            end
            4'b111x:/*Sll/sla*/begin
                r = b << (a-1);
                carry = r[31];
                r = r << 1;
                negative = r[31];
                zero = !r;
            end
            4'b1101:/*srl*/begin
                r = b >> (a-1);
                carry = r[0];
                r = r>>1;
                negative = r[31];
                zero = !r;
            end
            default:
                ;
        endcase

    end

endmodule