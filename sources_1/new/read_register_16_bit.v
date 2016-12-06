`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2016 07:20:57 PM
// Design Name: 
// Module Name: read_register_16_bit
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
module read_register_16_bit(
	input [255:0] registers_flat,
    input [3:0] s,
    output [15:0] out
    );
	
	wire [15:0] registers [0:15];
	assign {registers[15], registers[14], registers[13], registers[12], registers[11], registers[10], registers[9], registers[8], registers[7], registers[6], registers[5], registers[4], registers[3], registers[2], registers[1], registers[0]} = registers_flat;
    
    wire [3:0] s_not;
    wire [15:0] register_and [0:15];
    
    not not0(s_not[0],s[0]);
    not not1(s_not[1],s[1]);
    not not2(s_not[2],s[2]);
    not not3(s_not[3],s[3]);
        
    and and0[0:15](register_and[0], registers[0], s_not[3], s_not[2], s_not[1], s_not[0]);
    and and1[0:15](register_and[1], registers[1], s_not[3], s_not[2], s_not[1], s[0]);
    and and2[0:15](register_and[2], registers[2], s_not[3], s_not[2], s[1], s_not[0]);
    and and3[0:15](register_and[3], registers[3], s_not[3], s_not[2], s[1], s[0]);
    and and4[0:15](register_and[4], registers[4], s_not[3], s[2], s_not[1], s_not[0]);
    and and5[0:15](register_and[5], registers[5], s_not[3], s[2], s_not[1], s[0]);
    and and6[0:15](register_and[6], registers[6], s_not[3], s[2], s[1], s_not[0]);
    and and7[0:15](register_and[7], registers[7], s_not[3], s[2], s[1], s[0]);
    and and8[0:15](register_and[8], registers[8], s[3], s_not[2], s_not[1], s_not[0]);
    and and9[0:15](register_and[9], registers[9], s[3], s_not[2], s_not[1], s[0]);
    and and10[0:15](register_and[10], registers[10], s[3], s_not[2], s[1], s_not[0]);
    and and11[0:15](register_and[11], registers[11], s[3], s_not[2], s[1], s[0]);
    and and12[0:15](register_and[12], registers[12], s[3], s[2], s_not[1], s_not[0]);
    and and13[0:15](register_and[13], registers[13], s[3], s[2], s_not[1], s[0]);
    and and14[0:15](register_and[14], registers[14], s[3], s[2], s[1], s_not[0]);
    and and15[0:15](register_and[15], registers[15], s[3], s[2], s[1], s[0]);
    
    or or1[0:15](
        out,
        register_and[0],
        register_and[1],
        register_and[2],
        register_and[3],
        register_and[4],
        register_and[5],
        register_and[6],
        register_and[7],
        register_and[8],
        register_and[9],
        register_and[10],
        register_and[11],
        register_and[12],
        register_and[13],
        register_and[14],
        register_and[15]
        );
        
endmodule