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
   
   // creates 16 d flip flops based for each bit of input/output
   d_flip_flop dff1(data_in[0], clk, data_out[0], ce);
   d_flip_flop dff2(data_in[1], clk, data_out[1], ce);
   d_flip_flop dff3(data_in[2], clk, data_out[2], ce);
   d_flip_flop dff4(data_in[3], clk, data_out[3], ce);
   d_flip_flop dff5(data_in[4], clk, data_out[4], ce);
   d_flip_flop dff6(data_in[5], clk, data_out[5], ce);
   d_flip_flop dff7(data_in[6], clk, data_out[6], ce);
   d_flip_flop dff8(data_in[7], clk, data_out[7], ce);
   d_flip_flop dff9(data_in[8], clk, data_out[8], ce);
   d_flip_flop dff10(data_in[9], clk, data_out[9], ce);
   d_flip_flop dff11(data_in[10], clk, data_out[10], ce);
   d_flip_flop dff12(data_in[11], clk, data_out[11], ce);
   d_flip_flop dff13(data_in[12], clk, data_out[12], ce);
   d_flip_flop dff14(data_in[13], clk, data_out[13], ce);
   d_flip_flop dff15(data_in[14], clk, data_out[14], ce);
   d_flip_flop dff16(data_in[15], clk, data_out[15], ce);
   
endmodule
   