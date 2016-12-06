`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2016 06:27:44 PM
// Design Name: 
// Module Name: decoder_4_to_16
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


module decoder_4_to_16(c_addr, select_line, load);
    input [3:0] c_addr;
    input load; 
    output [15:0] select_line; 
            
    wire [15:0] select_line; 
    
    assign select_line = (load) ? (1 << c_addr) : 16'b0 ;

endmodule
