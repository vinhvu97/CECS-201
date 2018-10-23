`timescale 1ns / 1ns


// Top level module for ENcoder- Decoder circuit 
// Eight bit value first encoded
// then decoded - output should match input 
//
// CECS 201
// Zachery Takkesh

module EncDec_tf;

// declare inputs/outputs
reg[7:0] TopIn;
wire[7:0] TopOut;

//variable for test fixture
integer 		i;

// Instantiate the Unit Under Test (UUT)
EncDec topdut (.In(TopIn), .Out(TopOut));
	
//generate the test stimulus
initial begin
			i=0;
			TopIn = 1;
			
			for(i = 0; i<9; i = i+1)
				#100 TopIn = TopIn << 1;
			end
			
endmodule

