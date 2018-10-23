// Justin Maeder;		015906629
// CECS 201
// Counter 32 - test bench
// November 2, 2017

`timescale 1ns / 1ns


module counter32_tf;

	// Inputs
	reg clk, rst, sw1, sw0;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	counter32 uut (.clk(clk),.rst(rst),.led(led),.sw0(sw0),.sw1(sw1));

always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		sw1 = 0;
		sw0 = 0;
		#100	rst = 0;
		
	end
      
endmodule
