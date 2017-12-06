`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:49 12/05/2017 
// Design Name: 
// Module Name:    siebensegment 
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
module siebensegment(
	input clk,
	input data0,
	input data1, 
	input data2,
	input data3,
	output segmente,
	output anode
);
	parameter w = 15;
	wire [w - 1:0] count_clockdivide;
	counter #(.width(w)) counter_clockdivide( .clk(clk), .reset(1'b0), .count(count_clockdivide));
	
	wire [1:0] count_digits;
	counter #(.width(2)) counter_digits( .clk(count_clockdivide[w-1]), .reset(1'b0), count(count_digits));
	
	wire [3:0] data_to_sevSeg;
	assign data_to_sevSeg = (count_digits == 2'd0 ? data0 :
									(count_digits == 2'd1 ? data1 :
									(count_digits == 2'd2 ? data2 :
									(count_digits == 2'd3 ? data3 :
									4'bzzzz ))));
									
	bcd bcd0(.number(data_to_sevSeg), .tosev(segmente));
	
	assign anode = (count_digits == 2'd0 ? 4'b0111 : 
						(count_digits == 2'd1 ? 4'b1011 : 
						(count_digits == 2'd2 ? 4'b1101 : 
						(count_digits == 2'd3 ? 4'b1110 : 
						4'bzzzz))));
endmodule
