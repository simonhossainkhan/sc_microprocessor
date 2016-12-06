`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:06 11/30/2016 
// Design Name: 
// Module Name:    sign_extender_4_to_16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sign_extender_4_to_16(
    input [3:0] in,
    output [15:0] out
    );

	assign out = {{12{in[3]}}, in};

endmodule
