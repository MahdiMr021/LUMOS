`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:53:51 05/16/2023
// Design Name:   CU
// Module Name:   C:/Users/Erfan/Desktop/ControlUnit_Verilog/Control_Unit_Verilog/testcu.v
// Project Name:  Control_Unit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testcu;

	// Inputs
	reg [4:0] opcode;

	// Outputs
	wire RegDst;
	wire RegWrite;
	wire MemToReg;
	wire MemWrite;
	wire MemRead;
	wire ALUsrc;
	wire ExtOp;
	wire Branch;

	// Instantiate the Unit Under Test (UUT)
	CU uut (
		.opcode(opcode), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemToReg(MemToReg), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.ALUsrc(ALUsrc), 
		.ExtOp(ExtOp), 
		.Branch(Branch)
	);

	initial begin
		// Initialize Inputs
		opcode = 1;

		// Wait 100 ns for global reset to finish
		#100;
        opcode = 0111;
		// Add stimulus here

	end
      
endmodule

