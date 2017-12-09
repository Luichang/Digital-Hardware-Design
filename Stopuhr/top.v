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
	wire zeroPoint1Clk = 1'b0;
	
	entprellt starellt(.clk(clk), .taste(start), .entprellt(start_e));
	entprellt resrellt(.clk(clk), .taste(reset), .entprellt(reset_e));
	entprellt paurellt(.clk(clk), .taste(pause), .entprellt(pause_e));
	entprellt storellt(.clk(clk), .taste(stop), .entprellt(stopp_e));
	
	parameter max_count = 5000000; 
	reg [22:0] count = 23'd0;
	always @(posedge clk)
	begin
		if (reset_line) count <= 0;
		else begin
			count <= count + 23'd1;
			if (count == max_count) begin
				zeroPoint1Clk <= ~zeroPoint1Clk;
				count <= 0;
			end
		end
	end

endmodule
