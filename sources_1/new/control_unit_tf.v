`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:59 12/04/2016
// Design Name:   control_unit
// Module Name:   D:/Documents/Xilinx Projects/ECE 425/SixteenBitPipelinedRiscMicroprocessor/control_unit_tf.v
// Project Name:  SixteenBitPipelinedRiscMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_tf;

	// Inputs
	reg [3:0] op_code;

	// Outputs
	wire reg_dst;
	wire branch;
	wire mem_read;
	wire mem_to_reg;
	wire [2:0] alu_op;
	wire mem_write;
	wire alu_src;
	wire reg_write;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.op_code(op_code), 
		.reg_dst(reg_dst), 
		.branch(branch), 
		.mem_read(mem_read), 
		.mem_to_reg(mem_to_reg), 
		.alu_op(alu_op), 
		.mem_write(mem_write), 
		.alu_src(alu_src), 
		.reg_write(reg_write)
	);

	initial begin
		// R-type ADD
		op_code = 4'b0010;
		
		// R-type SUB
		#1 op_code = 4'b0110;

		// R-type AND
		#1 op_code = 4'b0000;
		
		// R-type OR
		#1 op_code = 4'b0001;
		
		// R-type SLT
		#1 op_code = 4'b0111;
		
		// LW
		#1 op_code = 4'b1000;
		
		// SW
		#1 op_code = 4'b1010;
		
		// BNE
		#1 op_code = 4'b1110;
	end
      
endmodule

