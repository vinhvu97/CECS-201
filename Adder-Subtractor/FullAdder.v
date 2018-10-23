`timescale 1ns / 1ps

// Full Adder
// Building block for ripple carry adder
// CECS 201
// Justin Maeder; 015906629

module FullAdder(A,B,Ci,S,Co);
    input A, B;   //data inputs
    input Ci;     //carry in
    output Co;    //carry out
    output S;     //sum
	 wire S,Co;    //declare the data types
	 assign #5 S=A ^ B ^ Ci;
	 assign #7 Co=A&B|A&Ci|B&Ci;
    


endmodule
 