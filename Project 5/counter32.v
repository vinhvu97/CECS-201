// Justin Maeder;		015906629
// CECS 201
// Counter 32 
// November 2, 2017

`timescale 1ns / 1ns

module counter32(clk, rst, led, sw1, sw0);
input sw1, sw0;
output reg [7:0] led;

input clk, rst;

reg [31:0] Q;

always @ (posedge clk, posedge rst)
	if (rst)  Q <= 32'b0;
	else		 Q <= Q + 32'b1;

	always @(*)
	case({sw1, sw0})
	2'b00 : led = Q [7:0];
	2'b01 : led = Q [15:8];
	2'b10 : led = Q [23:16];
	2'b11 : led = Q [31:24];
	endcase

endmodule
