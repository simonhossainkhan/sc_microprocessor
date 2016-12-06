`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:27 12/05/2016
// Design Name:   sign_extender_4_to_16
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/sign_extender_4_to_16_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extender_4_to_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_extender_4_to_16_tf;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	sign_extender_4_to_16 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		in = 4'b0101;
	end
      
endmodule

