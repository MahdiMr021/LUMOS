`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:27 05/15/2023 
// Design Name: 
// Module Name:    CU 
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
module CU(opcode,RegDst, RegWrite, MemToReg, MemWrite, MemRead, ALUsrc, ExtOp, Branch
    );
	 input [4:0]opcode;
	output reg RegDst, RegWrite, MemToReg, MemWrite, MemRead, ALUsrc, ExtOp, Branch;
	 always @(*)
		     begin
			     case(opcode)
						 4'b0000: begin //add
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b1 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b1 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b0;
					          end
						4'b0001: begin //lw
					             RegDst = 1'b0 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b1 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b1 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b0;
					          end
					  4'b0010: begin //sw
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b1 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b0;
					          end
					  4'b0100: begin //and
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
					          end
					  4'b0101: begin //andi
					             RegDst = 1'b0 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 
					          end
					  4'b1000: begin // sub
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b1;
					          end
					  4'b1001: begin  //bnq
					             RegDst = 1'b0 ;
									 RegWrite = 1'b0 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b1 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b1;
					          end
					  4'b1100: begin //mul
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
					          end
					4'b1101: begin //div
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
								end
					4'b1111: begin //xor
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
								end
								default: begin //default
					              RegDst = 1'b0 ;
									 RegWrite = 1'b0 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
					         end
				  endcase
			  end
endmodule
