`timescale 1ns / 1ns

module flop(clk, rst, D, Q);
input clk, rst, D;
output Q;
reg Q;

always @ (posedge clk, posedge rst)
	if (rst) Q <= 1'b0;
	else		Q <= D;

endmodule
