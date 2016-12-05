`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:57 12/04/2016 
// Design Name: 
// Module Name:    mux_4_to_1 
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
module mux_4_to_1(
    input [15:0] in1,
    input [15:0] in2,
    input [15:0] in3,
    input [15:0] in4,
    input [1:0] select,
    output reg [15:0] out
    );
	
	always @ (in1, in2, in3, in4, select)
	begin
		case (select)
			2'b00: out = in1;
			2'b01: out = in2;
			2'b10: out = in3;
			2'b11: out = in4;
		endcase
	end

endmodule
