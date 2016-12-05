`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:20 11/30/2016 
// Design Name: 
// Module Name:    full_adder_16 
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
module full_adder_16(
    input [15:0] x,
    input [15:0] y,
    input carry_in,
    output [15:0] out,
	output carry_out,
	output overflow
    );
	
	wire [15:0] twos_comp_y, temp_carry_out;
	
	// XOR with carry_in to handle 2s complement operations.
	// In essence:
	//     carry_in  = 1: 2s complement (1st complement) + add carry_in in adders below
	//     carry_out = 0: no change / unsigned addition
	assign twos_comp_y = y ^ {16{carry_in}};

	// Add bits 0-15 like normal using the adder module.
	// NOTE: Order matters for proper carry_out and overflow detection.
	adder adder0 (x[0],  twos_comp_y[0],  carry_in,           out[0],  temp_carry_out[0]);
	adder adder1 (x[1],  twos_comp_y[1],  temp_carry_out[0],  out[1],  temp_carry_out[1]);
	adder adder2 (x[2],  twos_comp_y[2],  temp_carry_out[1],  out[2],  temp_carry_out[2]);
	adder adder3 (x[3],  twos_comp_y[3],  temp_carry_out[2],  out[3],  temp_carry_out[3]);
	adder adder4 (x[4],  twos_comp_y[4],  temp_carry_out[3],  out[4],  temp_carry_out[4]);
	adder adder5 (x[5],  twos_comp_y[5],  temp_carry_out[4],  out[5],  temp_carry_out[5]);
	adder adder6 (x[6],  twos_comp_y[6],  temp_carry_out[5],  out[6],  temp_carry_out[6]);
	adder adder7 (x[7],  twos_comp_y[7],  temp_carry_out[6],  out[7],  temp_carry_out[7]);
	adder adder8 (x[8],  twos_comp_y[8],  temp_carry_out[7],  out[8],  temp_carry_out[8]);
	adder adder9 (x[9],  twos_comp_y[9],  temp_carry_out[8],  out[9],  temp_carry_out[9]);
	adder adder10(x[10], twos_comp_y[10], temp_carry_out[9],  out[10], temp_carry_out[10]);
	adder adder11(x[11], twos_comp_y[11], temp_carry_out[10], out[11], temp_carry_out[11]);
	adder adder12(x[12], twos_comp_y[12], temp_carry_out[11], out[12], temp_carry_out[12]);
	adder adder13(x[13], twos_comp_y[13], temp_carry_out[12], out[13], temp_carry_out[13]);
	adder adder14(x[14], twos_comp_y[14], temp_carry_out[13], out[14], temp_carry_out[14]);
	adder adder15(x[15], twos_comp_y[15], temp_carry_out[14], out[15], carry_out);
	
	assign overflow = temp_carry_out[14] ^ carry_out;

endmodule
