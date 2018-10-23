`timescale 1ns / 1ps
// Two's compliment module
// CECS 201
// Justin Maeder; 015906629
module AdderSubtractor(A,B,AddLSubH,Co,S);
    input [15:0] A;
    input [15:0] B;
    input AddLSubH;
    output Co;
    output [15:0] S;
    
	 reg [15:0] Y;
	 always @(*)
	 begin
		if(AddLSubH)
			Y=~B;
		else
			Y=B;
	 end		
	 
	 FA16 FA16(
					.A(A),
					.B(Y),
					.Ci(AddLSubH),
					.S(S),
					.Co(Co)
	 
	 );


endmodule
