`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:19 12/06/2017 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
	input clk,
	input start,
	input reset,
	input pause,
	input stop,
	output reg [6:0] seg,
	output reg [3:0] pos
);
	reg [0:0] start_e;
	reg [0:0] reset_e;
	reg [0:0] pause_e;
	reg [0:0] stopp_e;
	wire reset_line;
	
	entprellt starellt(.clk(clk), .taste(start), .entprellt(start_e));
	entprellt resrellt(.clk(clk), .taste(reset), .entprellt(reset_e));
	entprellt paurellt(.clk(clk), .taste(pause), .entprellt(pause_e));
	entprellt storellt(.clk(clk), .taste(stop), .entprellt(stopp_e));
	
	counter #(width(23)) (.clk(clk), .reset(reset_line), .counter(

endmodule
