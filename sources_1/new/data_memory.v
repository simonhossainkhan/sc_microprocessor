`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:37 12/05/2016 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(
    input clock,
    input mem_write,
    input [15:0] address,
    input [15:0] write_data,
    output reg [15:0] read_data
    );
	
	reg [15:0] data[15:0];
	
	always @ (posedge clock)
		if (mem_write)
			data[address] <= write_data;
		else
			read_data <= data[address];

endmodule
