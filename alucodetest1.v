`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:44:41 05/12/2023
// Design Name:   alucode
// Module Name:   E:/14.7/ISE_DS/ISE/verilog/Desktop/aluCode/alucodetest1.v
// Project Name:  aluCode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alucode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alucodetest1;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [1:0] op;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	alucode uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 6;
		b = 2;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a = 6;
		b = 2;
		op = 1;
		// Add stimulus here
		#100
		a = 6;
		b = 2;
		op = 2;
		#100
		a = 6;
		b = 2;
		op = 3;

	end
      
endmodule

