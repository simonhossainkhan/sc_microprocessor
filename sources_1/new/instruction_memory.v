`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:45 12/05/2016 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory(
    input [5:0] read_address,
    output [15:0] instruction
    );
	
	reg [15:0] instructions[15:0];
	
	// Instructions for R4 = R2 * R3
	initial
	begin
		instructions[0] = 16'b0010_0001_0000_1000;     // ADD R8, R1, R0             // Use R8 as temporary register.
		instructions[1] = 16'b1110_0010_0000_0010;     // BNE R2, R0, MULTIPLY_LOOP  // If (R2 != 0), then go to MULTIPLY_LOOP.
		instructions[2] = 16'b0010_0000_0000_0100;     // ADD R4, R0, R0             // Initialize R4 to 0.
		instructions[3] = 16'b1110_0000_0001_0100;     // BNE R0, R1, END            // Used to directly move to END
		instructions[4] = 16'b0011_0000_0000_0000;     // MULTIPLY_LOOP: NOOP        // Stall
		instructions[5] = 16'b0010_0100_0011_0100;     // ADD R4, R4, R3             // R4 = R4 + R3
		instructions[6] = 16'b1110_0010_0111_1101;     // BNE R2, R8, MULTIPLY_LOOP  // If (R2 != R8), then repeat MULTIPLY_LOOP.
		instructions[7] = 16'b0010_0111_0001_0111;     // ADD R8, R8, R1             // R8 = R8 +1
		instructions[8] = 16'b0011_0000_0000_0000;     // END: NOOP
		instructions[9] = 16'b0011_0000_0000_0000;
		instructions[10] = 16'b0011_0000_0000_0000;
		instructions[11] = 16'b0011_0000_0000_0000;
		instructions[12] = 16'b0011_0000_0000_0000;
		instructions[13] = 16'b0011_0000_0000_0000;
		instructions[14] = 16'b0011_0000_0000_0000;
		instructions[15] = 16'b0011_0000_0000_0000;
	end
	
	// Return the proper instruction based on the read address.
	assign instruction = instructions[read_address[3:0]];

endmodule
