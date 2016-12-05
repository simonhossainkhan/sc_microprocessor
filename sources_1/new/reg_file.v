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
    output [15:0]A,
    output [15:0]B,
    input [15:0]C,
    input [3:0]Aaddr,
    input [3:0]Baddr,
    input [3:0]Caddr,
    input Load,
    input clk  // rising edge of clk
    );
    wire [15:0] caddr_select;
    wire [15:0] regout [0:15];
        
    decoder_4_to_16 decoder(Load,Caddr,caddr_select);
        
    register_16_bit register0(clk,caddr_select[0],C,regout[0]);
    register_16_bit register1(clk,caddr_select[1],C,regout[1]);
    register_16_bit register2(clk,caddr_select[2],C,regout[2]);
    register_16_bit register3(clk,caddr_select[3],C,regout[3]);
    register_16_bit register4(clk,caddr_select[4],C,regout[4]);
    register_16_bit register5(clk,caddr_select[5],C,regout[5]);
    register_16_bit register6(clk,caddr_select[6],C,regout[6]);
    register_16_bit register7(clk,caddr_select[7],C,regout[7]);
    register_16_bit register8(clk,caddr_select[8],C,regout[8]);
    register_16_bit register9(clk,caddr_select[9],C,regout[9]);
    register_16_bit register10(clk,caddr_select[10],C,regout[10]);
    register_16_bit register11(clk,caddr_select[11],C,regout[11]);
    register_16_bit register12(clk,caddr_select[12],C,regout[12]);
    register_16_bit register13(clk,caddr_select[13],C,regout[13]);
    register_16_bit register14(clk,caddr_select[14],C,regout[14]);
    register_16_bit register15(clk,caddr_select[15],C,regout[15]);
    
    read_register_16_bit data_out_A(regout,Aaddr,A);
    
    read_register_16_bit data_out_B(regout,Baddr,B);
    
        
endmodule
