`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2016 05:09:07 PM
// Design Name: 
// Module Name: d_flip_flop
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
// verified this code with the resource from http://www.ece.ucsb.edu/ -- for this sc_microprocessor project
//////////////////////////////////////////////////////////////////////////////////

module d_flip_flop(d, clk, q, clear);
    input d, clk, clear;
    output q;
    reg q;
    
    always @(posedge clk) if (clear) q <= d;

endmodule