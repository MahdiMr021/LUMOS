`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:50 12/29/2022 
// Design Name: 
// Module Name:    Control_Unit_Verilog 
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
module Control_Unit_Verilog(opcode, RegDst, RegWrite, MemToReg, MemWrite, MemRead, ALUsrc, ExtOp ,Branch, ALUop
    );
	 input [2:0] opcode;
	 output reg [1:0] ALUop;
	 output reg RegDst, RegWrite, MemToReg, MemWrite, MemRead, ALUsrc, ExtOp, Branch;
	 always @(*)
		     begin
			     case(opcode)
				     3'b000: begin //add
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 ALUop = 2'b00 ;
					          end
					  3'b001: begin //sub
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 ALUop = 2'b01 ;
					          end
					  3'b010: begin //branch
					             RegDst = 1'b0 ;
									 RegWrite = 1'b0 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b1;
									 ALUop = 2'b01 ;
					          end
					  3'b011: begin //and
					             RegDst = 1'b1 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b0 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 ALUop = 2'b10 ;
					          end
					  3'b100: begin // lw
					             RegDst = 1'b0 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b1 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b1 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b0;
									 ALUop = 2'b00 ;
					          end
					  3'b101: begin  //sw
					             RegDst = 1'b0 ;
									 RegWrite = 1'b0 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b1 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b1 ;
									 Branch = 1'b0;
									 ALUop = 2'b00 ;
					          end
					  3'b110: begin //addi
					             RegDst = 1'b0 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 ALUop = 2'b00 ;
					          end
					  3'b111: begin //ori
					             RegDst = 1'b0 ;
									 RegWrite = 1'b1 ;
									 MemToReg = 1'b0 ;
									 MemWrite = 1'b0 ;
									 MemRead = 1'b0 ;
									 ALUsrc = 1'b1 ;
									 ExtOp = 1'b0 ;
									 Branch = 1'b0;
									 ALUop = 2'b11 ;
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
									 ALUop = 2'b00 ;
					           end
				  endcase
			  end
endmodule
