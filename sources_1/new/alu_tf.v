`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:00:22 12/04/2016
// Design Name:   alu
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/alu_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tf;

	// Inputs
	reg [2:0] alu_op;
	reg [15:0] x;
	reg [15:0] y;

	// Outputs
	wire [15:0] out;
	wire lt;
	wire eq;
	wire gt;
	wire carry_out;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.alu_op(alu_op), 
		.x(x), 
		.y(y), 
		.out(out), 
		.lt(lt), 
		.eq(eq), 
		.gt(gt), 
		.carry_out(carry_out), 
		.overflow(overflow)
	);

	initial begin
		// AND & lt
		alu_op = 0;
		x = 500;
		y = 1000;

		// OR
		#1 alu_op = 1;
        
		// ADD
		#1 alu_op = 2;
		
		// SUB
		#1 alu_op = 6;
		
		// eq
		#1 x = 1000;
		
		// gt
		#1 x = 1500;
	end
      
endmodule

