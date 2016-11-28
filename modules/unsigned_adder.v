`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2016 10:35:52 AM
// Design Name: 
// Module Name: unsigned_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module unsigned_adder(
    input [15:0]val_a,
    input [15:0]val_b,
    output reg [15:0]result
    );
    always@(val_a, val_b)
    begin
        result <= val_a + val_b;
    end
    
endmodule
