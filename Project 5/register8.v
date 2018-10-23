`timescale 1ns / 1ns

module register32(clk, rst, D, Q);
input clk, rst;
input  [31:0] D;
output [31:0] Q;
reg    [31:0] Q;

always @ (posedge clk, posedge rst)
	if (rst) Q <= 31'b0;
	else		Q <= D;
endmodule
