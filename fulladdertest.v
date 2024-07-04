`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:32 05/12/2023
// Design Name:   fulladder_4bit
// Module Name:   E:/14.7/ISE_DS/ISE/verilog/Desktop/fuladder/fulladdertest.v
// Project Name:  fuladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module fulladdertest();
	reg [3:0]A,B;
	reg Ci;
	wire Co;
	wire [3:0]S;
	integer i,k;
	fulladder_4bit u1(S,Co,A,B,Ci);
	initial begin
		Ci<=0;
		A<=4'b0000;
		B<=4'b0000;
		#10
		for (i=0;i<16;i=i+1)
		begin
			for (k=0;k<16;k=k+1)
			#10 B=B+1;
			#10 A=A+1;
		end
	end
	initial begin
		$vcdplusfile("waveform.vpd");
		$vcdpluson();
	end
endmodule

