`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:23 12/09/2017 
// Design Name: 
// Module Name:    tastenzaehler 
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
module tastenzaehler(
	input clk,
	input taste,
	output reg [3:0] count
);
	reg [1:0] buffer;
	wire taste_posedge;
	wire taste_e;
	
	assign taste_posedge = (buffer == 2'b01);
	always @(posedge clk)
	begin
		if (taste_posedge) count <= count + 4'd1;
		buffer = {buffer[0], taste_e};
	end
	entprellt e1(.clk(clk), .taste(taste), .entprellt(taste_e));
endmodule
