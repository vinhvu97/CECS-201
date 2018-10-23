`timescale 1ns / 1ps

// adder - subtractor test bench
// CECS 201
// Justin Maeder; 015906629

module AdderSubtractor_tf;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg AddLSubH;

	// Outputs
	wire Co;
	wire [15:0] S;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	AdderSubtractor uut (
		.A(A), 
		.B(B), 
		.AddLSubH(AddLSubH), 
		.Co(Co), 
		.S(S)
	);

	initial begin
		for (i=0; i<16; i=i+1)
			begin 
			if (i%4) AddLSubH=1; else AddLSubH=0;
			A=i;
			B=i+35;
			if (i==15) begin A=1; B=16'hFFFF; end
			
		#100
			if(S!==A+B+AddLSubH)
				$display ( "Error S = %d A = %d B = %d AddLSubH = %b", S,A,B,AddLSubH);
			end
	end
      
endmodule

