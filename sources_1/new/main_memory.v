`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2016 12:49:04 AM
// Design Name: 
// Module Name: main_memory
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


module main_memory(
    input clk,
    input mem_write,
    input [4:0] address,
    input [15:0] in_data,
    output reg [15:0] out_data
    );
    
    // 16x16 bit registers
    reg [15:0] RAM [0:15];
    
    initial begin
        RAM[0] = 0;
        RAM[1] = 0;
        RAM[2] = 0;
        RAM[3] = 0;
        RAM[4] = 0;
        RAM[5] = 0;
        RAM[6] = 0;
        RAM[7] = 0;
        RAM[8] = 0;
        RAM[9] = 0;
        RAM[10] = 10;
        RAM[11] = 20;
        RAM[12] = 33;
        RAM[13] = 89;
        RAM[14] = 0;
        RAM[15] = 0;
    end
    
    always @(*)
        out_data <= RAM[address];
    
    always @(posedge clk) begin
        if(mem_write)
            RAM[address] <= in_data;
    end

endmodule
