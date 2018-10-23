// Project 6 - Sequencer
// Justin Maeder
// CECS 201
// 11/26/17

`timescale 1ns / 1ps

module Top(input clk,input rst,output [7:0] Led);
wire [2:0] state;

//counter
counter32 u1 (.clk (clk),.rst (rst),.countout (countout));
		
//pos _edge _detect
pos_ed_de u2(.clk (clk),.rst (rst),.d   (countout),.ped (ped));
		
//sequencer
sequencer u3(.clk(clk),.rst(rst),.ped(ped),.state(state));

//decoder
decoder u4(.state(state),.Led(Led));
	
endmodule
