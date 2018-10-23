// Project 6 - PED
// Justin Maeder
// CECS 201
// 11/26/17

`timescale 1ns / 1ps

module pos_ed_de( rst, clk, d, ped );
input rst, clk, d;
output ped;

reg [1:0] q;
reg ped;

always @(posedge clk, posedge rst)

if (rst) q<= 2'b0;
else q[1:0] <= {q[0], d};

always @(*)
	ped = (~q[0]) & q [1];
	
endmodule
