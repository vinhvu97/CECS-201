`timescale 1ns / 1ps

// 16 - bit adder test bench
// CECS 201
// Justin Maeder; 015906629

module FA16_tf;

	// Inputs
	reg [15:0] A,B; 
	reg Ci;

	// Outputs
	wire [15:0] S;
	wire Co;
	
	// variable for test
	integer i;
	// Instantiate the Unit Under Test (UUT)
	FA16 FA16 (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.S(S), 
		.Co(Co)
	);

	initial begin
		for (i=0; i<16; i=i+1)
			begin 
			if (i%4) Ci=1; else Ci=0;
			A=i;
			B=i+35;
			if (i==15) begin A=1; B=16'hFFFF; end
			
		#100
			if(S!==A+B+Ci)
				$display ( "Error S = %d A = %d B = %d Ci = %b", S,A,B,Ci);
			end
	end

		
endmodule

