`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:02 12/06/2017 
// Design Name: 
// Module Name:    counter 
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
module counter #(parameter width = 32 ) // mit Angabe des Default-Werts
(
	input clk,
	input reset,
	output reg [width - 1:0] counter // hier sollte breite vorkommen
);
	always @(posedge clk, posedge reset)
		if (reset) counter <= 0;
		else counter <= counter + 1;
endmodule
