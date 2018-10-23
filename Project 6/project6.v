// Project 6 - Sequencer - test fixture
// Justin Maeder
// CECS 201
// 11/26/17
`timescale 1ns / 1ps

module sequncer_tf;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] Led;

	// Instantiate the Unit Under Test (UUT)
	Top uut (.clk(clk), .rst(rst), .Led(Led));
	
//generate clock
always #5 clk = ~clk;

initial begin
// Initialize Inputs
clk = 1;
rst = 1;

// Wait 100-ns for global reset to finish
#100  rst = 0;

	end
      
endmodule


