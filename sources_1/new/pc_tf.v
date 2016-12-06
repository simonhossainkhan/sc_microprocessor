`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:48 12/05/2016
// Design Name:   pc
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/pc_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_tf;

	// Inputs
	reg clock;
	reg [5:0] in;

	// Outputs
	wire [5:0] out;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.clock(clock), 
		.in(in), 
		.out(out)
	);

	// Alternate clock every cycle.
	initial begin
		clock = 0;
		repeat (1_000_000)
			#1 clock = ~clock;
	end
	
	initial begin
		@(negedge clock) in = 42;
	end
      
endmodule

