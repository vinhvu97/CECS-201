// Project 6 - Sequencer
// Justin Maeder
// CECS 201
// 11/26/17

`timescale 1ns / 1ps

module sequencer(clk, rst, ped, state);

input clk, rst, ped;
output [2:0] state;

reg [2:0] state, next_state;

always @(posedge clk, posedge rst)
	if (rst) state <= 3'b0;
	else	 state <= next_state;

always@(*)
	begin
	next_state = state;

	case(state)
	3'b000 : next_state = (ped) ? 3'b001 : 3'b000;
	3'b001 : next_state = (ped) ? 3'b010 : 3'b001;
	3'b010 : next_state = (ped) ? 3'b011 : 3'b010;
	3'b011 : next_state = (ped) ? 3'b100 : 3'b011;
	3'b100 : next_state = (ped) ? 3'b101 : 3'b100;
	3'b101 : next_state = (ped) ? 3'b110 : 3'b101;
	3'b110 : next_state = (ped) ? 3'b111 : 3'b110;
	3'b111 : next_state = (ped) ? 3'b000 : 3'b111;
	endcase
end

endmodule 


