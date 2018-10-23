// Project 6 - decoder
// Justin Maeder
// CECS 201
// 11/26/17

module decoder(state, Led);
input [2:0] state;
output [7:0] Led;

reg   [7:0] Led;

always@(*)
case(state)
  	3'b000 : Led = 8'b00000001;
	3'b001 : Led = 8'b00000010;
	3'b010 : Led = 8'b00000100;
	3'b011 : Led = 8'b00001000;
	3'b100 : Led = 8'b00010000;
	3'b101 : Led = 8'b00100000;
	3'b110 : Led = 8'b01000000;
	3'b111 : Led = 8'b10000000;
	endcase

endmodule
