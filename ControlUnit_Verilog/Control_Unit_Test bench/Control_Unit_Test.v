`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:49:37 12/30/2022
// Design Name:   Control_Unit_Verilog
// Module Name:   E:/season-4-UNI/architecture/verilog/Control_Unit/Control_Unit_Test.v
// Project Name:  Control_Unit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit_Verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Unit_Test;

	// Inputs
	reg [2:0] opcode;

	// Outputs
	wire RegDst;
	wire RegWrite;
	wire MemToReg;
	wire MemWrite;
	wire MemRead;
	wire ALUsrc;
	wire ExtOp;
	wire Branch;
	wire [1:0] ALUop;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit_Verilog uut (
		.opcode(opcode), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemToReg(MemToReg), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.ALUsrc(ALUsrc), 
		.ExtOp(ExtOp), 
		.Branch(Branch), 
		.ALUop(ALUop)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
		opcode = 3'b000;//add
		#100;
		opcode = 3'b001;//sub
		#100;
		opcode = 3'b010;//brach
		#100;
		opcode = 3'b011;//and
		#100;
		opcode = 3'b100;//lw
		#100;
		opcode = 3'b101;//sw
		#100;
		opcode = 3'b110;//addi
		#100;
		opcode = 3'b111;//ori
        
		// Add stimulus here

	end
      
endmodule

