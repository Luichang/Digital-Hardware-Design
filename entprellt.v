`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:15 12/05/2017 
// Design Name: 
// Module Name:    entprellt 
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
module entprellt(
	input clk,
	input taste,
	output reg entprellt
   );
	parameter max_count = 500000; //500000 / 50Mhz = 10ms
	reg [18:0] count = 19'd0; // 2^19 = 524288, eben für die 500000
	always @(posedge clk)
	begin
		if (entprellt == taste) count <= 0;
		else begin
			count <= count + 19'd1;
			if (count == max_count) entprellt <= ~entprellt;
		end
	end
endmodule 