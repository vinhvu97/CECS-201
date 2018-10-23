`timescale 1ns / 1ns

module load32(clk, rst, load, D, Q);
input clk, rst, load;
input		[31:0] D;
output	[31:0] Q;
reg		[31:0] Q;

always @ (posedge clk, posedge rst)
	if (rst) Q <= 31'b0; else
	if (load) Q <= D;

endmodule
