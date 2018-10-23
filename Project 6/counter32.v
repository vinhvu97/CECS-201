// Project 6 - 32 bit counter
// Justin Maeder
// CECS 201
// 11/26/17

`timescale 1ns / 1ps

module counter32(clk, rst, countout);

input clk, rst;
output countout;

reg [31:0] counter;

assign countout = counter[26];

always @( posedge clk, posedge rst)
if (rst) counter <= 32'b0;
else     counter <= counter + 32'b1;


endmodule
