`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2016 09:09:43 PM
// Design Name: 
// Module Name: control_isa
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


module control_isa(
    input [3:0]opCode,
    output regDst,
    output regWrite,
    output branch,
    output memRead,
    output memToReg,
    output memWrite,
    output [2:0]aluOp,
    output aluSrc
    );
    
    // if most significant bit is 0 - it is r type
    always@(opCode)
        begin
            case (opCode)
                3'b0010:
                    begin
                        // 2 is r type add
                        regDst = 1'b1;
                        regWrite = 1'b0;
                        branch = 1'b0;
                        memRead = 1'b0;
                        memToReg = 1'b0;
                        memWrite = 1'b0;
                        aluOp = 3'b010;
                        aluSrc = 1'b0;
                    end
                3'b0110:
                    begin
                        // 6 is r type sub
                        regDst = 1'b1;
                        regWrite = 1'b0;
                        branch = 1'b0;
                        memRead = 1'b0;
                        memToReg = 1'b0;
                        memWrite = 1'b0;
                        aluOp = 3'b110;
                        aluSrc = 1'b0;
                    end
                3'b0000:
                    begin
                        // 0 is r type and
                        regDst = 1'b1;
                        regWrite = 1'b0;
                        branch = 1'b0;
                        memRead = 1'b0;
                        memToReg = 1'b0;
                        memWrite = 1'b0;
                        aluOp = 3'b000;
                        aluSrc = 1'b0;
                    end
                3'b0001:
                    begin
                        // 1 is r type or
                        regDst = 1'b1;
                        regWrite = 1'b0;
                        branch = 1'b0;
                        memRead = 1'b0;
                        memToReg = 1'b0;
                        memWrite = 1'b0;
                        aluOp = 3'b001;
                        aluSrc = 1'b0;
                    end
                3'b0111:
                    begin
                        // 7 is r type slt
                        regDst = 1'b1;
                        regWrite = 1'b0;
                        branch = 1'b0;
                        memRead = 1'b0;
                        memToReg = 1'b0;
                        memWrite = 1'b0;
                        aluOp = 3'b111;
                        aluSrc = 1'b0;
                    end
                3'b1000:
                    begin
                        // 8 is load word
                        regDst = 1'b0;
                        regWrite = 1'b1;
                        branch = 1'b0;
                        memRead = 1'b1;
                        memToReg = 1'b1;
                        memWrite = 1'b0;
                        aluOp = 3'b010;
                        aluSrc = 1'b1;
                    end
                3'b1010:
                    begin 
                        // 10 is store word
                        regDst = 1'b0;  // don't care
                        regWrite = 1'b1;  
                        branch = 1'b0;
                        memRead = 1'b1;
                        memToReg = 1'b1; // don't care
                        memWrite = 1'b1;
                        aluOp = 3'b010;
                        aluSrc = 1'b1;
                    end
                3'b1110:
                    begin
                        // 14 is BNE
                        regDst = 1'b0;  // don't care
                        regWrite = 1'b0;  
                        branch = 1'b1;
                        memRead = 1'b0;
                        memToReg = 1'b1; // don't care
                        memWrite = 1'b0;
                        aluOp = 3'b110;  // subtract 
                        aluSrc = 1'b0;      
                    end
            endcase
        end
            
endmodule
