`timescale 1ns / 1ns

// Top level module for ENcoder- Decoder circuit 
// Eight bit value first encoded
// then decoded - output should match input 
//
// CECS 201
// Zachery Takkesh

module EncDec (In, Out);

input[7:0] In;
output [7:0] Out;

// declare intermediate 3-bit bus
wire [2:0] Conn;

Encoder enc(.In(In), .Out(Conn), .Good(Good));
Decoder dec(.In(Conn), .Good(Good), .Out(Out));

endmodule