`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:19:19 12/05/2016
// Design Name:   data_memory
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/data_memory_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_memory_tf;

	// Inputs
	reg clock;
	reg mem_write;
	reg [15:0] address;
	reg [15:0] write_data;

	// Outputs
	wire [15:0] read_data;

	// Instantiate the Unit Under Test (UUT)
	data_memory uut (
		.clock(clock), 
		.mem_write(mem_write), 
		.address(address), 
		.write_data(write_data), 
		.read_data(read_data)
	);

	// Alternate clock every cycle.
	initial begin
		clock = 0;
		repeat (1_000_000)
			#1 clock = ~clock;
	end
	
	initial begin
		mem_write = 0;
		@(posedge clock);
		
		// Test memory write.
		@(negedge clock)
		begin
			mem_write = 1;
			address = 0;
			write_data = 42;
		end
		
		// Test memory read.
		@(negedge clock) mem_write = 0;
	end
      
endmodule

