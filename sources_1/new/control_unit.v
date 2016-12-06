`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:05 12/04/2016 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
	input [3:0] op_code,
	output reg reg_dst,
	output reg branch,
	output reg mem_read,
	output reg mem_to_reg,
	output reg [2:0] alu_op,
    output reg mem_write,
	output reg alu_src,
    output reg reg_write
    );
    
	// Instruction is R-type if MSB is 0.
    always @ (op_code)
	begin
		case (op_code)
			// op_code = 2: R-type ADD
			4'b0010:
				begin
					reg_dst = 1'b1;
					reg_write = 1'b0;
					branch = 1'b0;
					mem_read = 1'b0;
					mem_to_reg = 1'b0;
					mem_write = 1'b0;
					alu_op = 3'b010;
					alu_src = 1'b0;
				end
				
			// op_code = 6: R-type SUB
			4'b0110:
				begin
					reg_dst = 1'b1;
					reg_write = 1'b0;
					branch = 1'b0;
					mem_read = 1'b0;
					mem_to_reg = 1'b0;
					mem_write = 1'b0;
					alu_op = 3'b110;
					alu_src = 1'b0;
				end
			
			// op_code = 0: R-type AND
			4'b0000:
				begin
					reg_dst = 1'b1;
					reg_write = 1'b0;
					branch = 1'b0;
					mem_read = 1'b0;
					mem_to_reg = 1'b0;
					mem_write = 1'b0;
					alu_op = 3'b000;
					alu_src = 1'b0;
				end
				
			// op_code = 1: R-type OR
			4'b0001:
				begin
					reg_dst = 1'b1;
					reg_write = 1'b0;
					branch = 1'b0;
					mem_read = 1'b0;
					mem_to_reg = 1'b0;
					mem_write = 1'b0;
					alu_op = 3'b001;
					alu_src = 1'b0;
				end
				
			// op_code = 7: R-type SLT
			4'b0111:
				begin
					reg_dst = 1'b1;
					reg_write = 1'b0;
					branch = 1'b0;
					mem_read = 1'b0;
					mem_to_reg = 1'b0;
					mem_write = 1'b0;
					alu_op = 3'b111;
					alu_src = 1'b0;
				end
			
			// op_code = 8: LW
			4'b1000:
				begin
					reg_dst = 1'b0;
					reg_write = 1'b1;
					branch = 1'b0;
					mem_read = 1'b1;
					mem_to_reg = 1'b1;
					mem_write = 1'b0;
					alu_op = 3'b010;
					alu_src = 1'b1;
				end
				
			// op_code = A: SW
			4'b1010:
				begin 
					reg_dst = 1'bx;    // don't care
					reg_write = 1'b1;  
					branch = 1'b0;
					mem_read = 1'b1;
					mem_to_reg = 1'bx; // don't care
					mem_write = 1'b1;
					alu_op = 3'b010;
					alu_src = 1'b1;
				end
				
			// op_code = E: BNE
			4'b1110:
				begin
					reg_dst = 1'bx;    // don't care
					reg_write = 1'b0;  
					branch = 1'b1;
					mem_read = 1'b0;
					mem_to_reg = 1'bx; // don't care
					mem_write = 1'b0;
					alu_op = 3'b110;   // subtract 
					alu_src = 1'b0;      
				end
		endcase
	end

endmodule
