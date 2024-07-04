`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:10 05/12/2023 
// Design Name: 
// Module Name:    alucode 
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

module alucode(a,b,op,out
    );
input [3:0] a,b;
input [1:0] op;
output reg [7:0] out;
always@(*)
begin 
case(op)
0:out=a+b;
1:out=a*b;
2:out=a-b;
3:out=a/b;
default:out=0;
endcase
end


endmodule
