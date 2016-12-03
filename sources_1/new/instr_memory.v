`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2016 12:14:48 AM
// Design Name: 
// Module Name: instr_memory
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


module instr_memory(
    input [4:0] pc,
    output reg [15:0] instruction
    );
    
    reg [15:0] ROM [0:31];
    
    initial begin
            // Demo: Multiplication Pogram
            ROM[0] = {4'b0110,4'b0000,4'b0000,4'b0000};  // sub R0, R0, R0   ==> R0 = 0
            ROM[1] = {4'b0110,4'b0001,4'b0001,4'b0001};  // sub R1, R1, R1   ==> R1 = 0
            /* ROM[2] = {4'b1000,4'b0000,4'b0100,4'b1110};  // lw R4, 14(R0)    ==> R4 = MM[14] = 1
            ROM[3] = {4'b1000,4'b0000,4'b0010,4'b0001};  // lw R2, 1(R0)     ==> R2 = MM[1] = 3
            ROM[4] = {4'b1000,4'b0000,4'b0011,4'b0010};  // lw R3, 2(R0)     ==> R3 = MM[2] = 10
            //*ROM[5] = {4'b0010,4'b0001,4'b0010,4'b0001};  // add R1, R1, R2   ==> R1 = R1 + R2
            ROM[6] = {4'b0110,4'b0011,4'b0100,4'b0011};  // sub R3, R3, R4   ==> R3 = R3 - 1
            ROM[7] = {4'b1110,4'b0011,4'b0000,4'b1101};  // bne R3, R0, LOOP ==> (R3 != 0)? PC = PC + (-3)
            ROM[8] = {4'b1010,4'b0000,4'b0001,4'b0111};  // sw R1, 7(R0)     ==> MM[7] = R1
            ROM[9] = {4'b1000,4'b0000,4'b0011,4'b0111};  // lw R3, 7(R0)     ==> R3 = MM[7]
            ROM[10]= {4'b1000,4'b0000,4'b0000,4'b1111};  // lw R0, 15(R0)    ==> R0 = MM[15] = 0x00FF
            ROM[11]= {4'b1111,4'b0000,4'b0001,4'b1111};  // j 31             ==> PC = 31
            ROM[31]= {4'b1111,4'b0000,4'b0000,4'b0000};  // j 0              ==> PC = 0
    */
    end
    
    always @(*)
        instruction = ROM[pc];
        
endmodule


