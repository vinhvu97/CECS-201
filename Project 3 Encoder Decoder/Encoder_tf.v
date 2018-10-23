
`timescale 1ns / 1ns

//Test Fixture for Encoder Module
// Encoder - Decoder Project
// Run simulation and observe results
// CECS 201
// Zach Takkesh

module Encoder_tf;

// declare variables for testing
reg[7:0] EncIn;
wire[2:0] EncOut;
wire	Good;
integer i;

// instantiate the device under test 
Encoder edut (
				.In(EncIn),
				.Out(EncOut),
				.Good(Good)
				);
				
//generate the input stimulus
initial begin 
		EncIn = 8'b0000_0001;
		for (i=0; i< 9; i= i + 1)
			#100 EncIn = EncIn << 1;
		end
		
	endmodule

