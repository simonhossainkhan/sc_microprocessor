`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2016 11:28:05 PM
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
    input [2:0]opcod,
    input [15:0]X,
    input [15:0]Y,
    output [15:0]out,
    output zero
    );
    
    reg [15:0] output_result;
    reg lt;
    reg eq;
    reg gt;
    reg V; 
    reg Cout;
    reg [15:0]equal;
    
    
    always@(X,Y,opcod)
    begin
        case (opcod)
            3'b000: output_result = X & Y; // bitwise and operation
            3'b001: output_result = X || Y; // bitwise or operation
            3'b010: output_result = X + Y; //unsigned adder//full_adder_16_bit(X, Y, Cin, Cout, output_result); // unsigned adder
            3'b110: 
                begin
                    output_result = X - Y;// subtract
                    zero = (X == Y)? 16'b0000000000000001:16b'b0000000000000000'; // zero
                end
            
            3'b111: output_result = (X < Y) ? 16'b0000000000000001':16b'b0000000000000000'; // set on less than
            
            // twos complement addition
        
        endcase
    end
    
    assign out = output_result;
    
endmodule

