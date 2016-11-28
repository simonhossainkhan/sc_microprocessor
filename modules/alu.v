`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2016 09:35:26 AM
// Design Name: 
// Module Name: alu
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


module alu(
    input [15:0]X,
    input [15:0]Y,
    output [15:0]out,
    input Cin,
    output Cout,
    input lt,
    input eq,
    input gt,
    input V,
    input [2:0]opcod
    );
    
    reg [15:0] output_result;
        
    always@(X, Y, opcod)
    begin
        case (opcod)
            //3'b000: // AND
            //3'b001: // OR
            3'b010: unsigned_adder(X, Y, output_result); //add
            //3'b110: // subtract
            //3'b111: // set on less than
            //default:
        endcase
    end
    
    assign out = output_result;
    
endmodule
