`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:43 11/28/2016 
// Design Name: 
// Module Name:    alu 
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
module alu(
	input [2:0] alu_op,
    input [15:0] x,
    input [15:0] y,
    output [15:0] out,
    output lt,
    output eq,
    output gt,
	output carry_out,
    output overflow
    );
	
	// All results are calculated together.
	// A multiplexer is used later to determine which result to use based on alu_op.
	wire [15:0] result_and, result_or, result_full_adder;
	
	// alu_op = 2 (ADD), alu_op = 6 (SUB)
	// NOTE: MSB of alu_op determines unsigned or 2s complement addition.
	//       MSB of alu_op = 1: 2s complement number before adding
	//       MSB of alu_op = 0: regular addition
	full_adder_16 full_adder_16(x, y, alu_op[2], result_full_adder, carry_out, overflow);
	
	// AND
	// alu_op = 0
	assign result_and = x & y;
	
	// OR
	// alu_op = 1
	assign result_or = x | y;
	
	// Comparison Indicator Bits
	assign lt = (x < y);  // SLT (alu_op = 7)
	assign eq = (x == y); // BNE (op_code = 4'hE or 4'b1110 / alu_op = 3'b110, i.e. 3 LSB of op_code)
	assign gt = (x > y);
	
	// Select desired output based on alu_op.
	mux_4_to_1 mux_alu_result(result_and, result_or, result_full_adder, lt, alu_op[1:0], out);

endmodule
