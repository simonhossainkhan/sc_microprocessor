`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2016 05:26:19 PM
// Design Name: 
// Module Name: register_16_bit
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


module register_16_bit(
    input clk,
    input ce,
    input [15:0] data_in,
    output [15:0] data_out
   );
   
   d_flip_flop dff[15:0](clk,ce,data_in, data_out); // creates 16 d flip flops based for each bit of input/output
   
endmodule
   