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
	output [6:0] seg,
	output [3:0] pos
);
	wire start_e;
	wire reset_e;
	wire pause_e;
	wire stopp_e;
	
	wire [4:0] enable;
	wire [3:0] digit0;
	wire [3:0] digit1;
	wire [3:0] digit2;
	wire [3:0] digit3;
	wire reset_line;
	reg [0:0] zeroPoint1Clk = 1'b0;
	
	entprellt starellt(.clk(clk), .taste(start), .entprellt(start_e));
	entprellt resrellt(.clk(clk), .taste(reset), .entprellt(reset_e));
	entprellt paurellt(.clk(clk), .taste(pause), .entprellt(pause_e));
	entprellt storellt(.clk(clk), .taste(stop), .entprellt(stopp_e));
	
	
	
	parameter max_count = 2500000; // 2500000 causes the second time to be 1 second
	reg [22:0] count = 23'd0;
	always @(posedge clk)
	begin
		if (reset_line) count <= 0;
		else begin
			count <= count + 23'd1;
			if (count == max_count) begin
				zeroPoint1Clk <= 1 - zeroPoint1Clk;
				count <= 0;
			end
		end
	end
	
	increaseDigit #(.numSize(4)) in0(.clk(zeroPoint1Clk), .maxNum(4'd9), .enable(enable[0]), .counter(digit0), .out(enable[1]));
	increaseDigit #(.numSize(4)) in1(.clk(zeroPoint1Clk), .maxNum(4'd9), .enable(enable[1]), .counter(digit1), .out(enable[2]));
	increaseDigit #(.numSize(4)) in2(.clk(zeroPoint1Clk), .maxNum(4'd9), .enable(enable[2]), .counter(digit2), .out(enable[3]));
	increaseDigit #(.numSize(4)) in3(.clk(zeroPoint1Clk), .maxNum(4'd9), .enable(enable[3]), .counter(digit3), .out(enable[4]));
	
	siebensegment sevSeg(.clk(clk), .data0(digit0), .data1(digit1), 
	.data2(digit2), .data3(digit3), .segmente(seg), .anode(pos));
endmodule
