`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:09 12/05/2016
// Design Name:   instruction_memory
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/instruction_memory_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instruction_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instruction_memory_tf;

	// Inputs
	reg [5:0] read_address;

	// Outputs
	wire [15:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	instruction_memory uut (
		.read_address(read_address), 
		.instruction(instruction)
	);

	initial begin
		#100 read_address = 0;
		#100 read_address = 1;
		#100 read_address = 2;
		#100 read_address = 3;
		#100 read_address = 4;
		#100 read_address = 5;
		#100 read_address = 6;
		#100 read_address = 7;
		#100 read_address = 8;
		#100 read_address = 9;
		#100 read_address = 10;
		#100 read_address = 11;
		#100 read_address = 12;
		#100 read_address = 13;
		#100 read_address = 14;
		#100 read_address = 15;
	end
      
endmodule

