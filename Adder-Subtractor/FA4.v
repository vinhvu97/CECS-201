`timescale 1ns / 1ps

// Four - bit adder
// Building block for ripple carry adder
// CECS 201
// Justin Maeder; 015906629

module FA4(A,B,Ci,S,Co);
    input [3:0] A,B; 
    input Ci;
    output [3:0] S;
    output Co;
	 FullAdder FA3 (.A(A[3]), .B(B[3]), .Ci(Co2), .S(S[3]), .Co(Co));
	 FullAdder FA2 (.A(A[2]), .B(B[2]), .Ci(Co1), .S(S[2]), .Co(Co2));
	 FullAdder FA1 (.A(A[1]), .B(B[1]), .Ci(Co0), .S(S[1]), .Co(Co1));
	 FullAdder FA0 (.A(A[0]), .B(B[0]), .Ci(Ci),  .S(S[0]), .Co(Co0));

endmodule
