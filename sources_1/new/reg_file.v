`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2016 04:53:18 PM
// Design Name: 
// Module Name: reg_file
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
module reg_file(
    output [15:0] A,   // Read data 1
    output [15:0] B,   // Read data 2
    input [15:0] C,    // Write data
    input [3:0] Aaddr, // Read register 1
    input [3:0] Baddr, // Read register 2
    input [3:0] Caddr, // Write register
    input reg_write,   // RegWrite
    input clock        // Rising edge of clock
    );
	
    wire [15:0] caddr_select;
    wire [15:0] regout [0:15];
        
    decoder_4_to_16 decoder(Caddr, caddr_select, reg_write);
        
    register_16_bit register0(clock, caddr_select[0], C, regout[0]);
    register_16_bit register1(clock, caddr_select[1], C, regout[1]);
    register_16_bit register2(clock, caddr_select[2], C, regout[2]);
    register_16_bit register3(clock, caddr_select[3], C, regout[3]);
    register_16_bit register4(clock, caddr_select[4], C, regout[4]);
    register_16_bit register5(clock, caddr_select[5], C, regout[5]);
    register_16_bit register6(clock, caddr_select[6], C, regout[6]);
    register_16_bit register7(clock, caddr_select[7], C, regout[7]);
    register_16_bit register8(clock, caddr_select[8], C, regout[8]);
    register_16_bit register9(clock, caddr_select[9], C, regout[9]);
    register_16_bit register10(clock, caddr_select[10], C, regout[10]);
    register_16_bit register11(clock, caddr_select[11], C, regout[11]);
    register_16_bit register12(clock, caddr_select[12], C, regout[12]);
    register_16_bit register13(clock, caddr_select[13], C, regout[13]);
    register_16_bit register14(clock, caddr_select[14], C, regout[14]);
    register_16_bit register15(clock, caddr_select[15], C, regout[15]);
    
    read_register_16_bit data_out_A({regout[15], regout[14], regout[13], regout[12], regout[11], regout[10], regout[9], regout[8], regout[7], regout[6], regout[5], regout[4], regout[3], regout[2], regout[1], regout[0]}, Aaddr, A);
    read_register_16_bit data_out_B({regout[15], regout[14], regout[13], regout[12], regout[11], regout[10], regout[9], regout[8], regout[7], regout[6], regout[5], regout[4], regout[3], regout[2], regout[1], regout[0]}, Baddr, B);
        
endmodule
