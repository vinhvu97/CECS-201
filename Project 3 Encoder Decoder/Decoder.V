// Decoder Module
// Encoder - Decoder Project
// CECS 201
// Zachery Takkesh

module Decoder(In, Good, Out);

input[2:0] In;
input		Good;
output[7:0] Out;

reg[7:0] Out;

always @(*)
	begin 
	Out = 8'b0000_0000;
	case({Good,In})
		4'b1_000: Out = 8'b0000_0001;
		4'b1_001: Out = 8'b0000_0010;
		4'b1_010: Out = 8'b0000_0100;
		4'b1_011: Out = 8'b0000_1000;
		4'b1_100: Out = 8'b0001_0000;
		4'b1_101: Out = 8'b0010_0000;
		4'b1_110: Out = 8'b0100_0000;
		4'b1_111: Out = 8'b1000_0000;
		default: Out = 8'b0000_0000;
		endcase
	end
endmodule
		