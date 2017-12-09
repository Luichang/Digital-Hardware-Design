`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:06 12/09/2017 
// Design Name: 
// Module Name:    increaseDigit 
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
module increaseDigit #(parameter numSize = 4)(
	input clk,
	input [numSize - 1:0] maxNum,
	input enable,
	output reg [numSize - 1:0] counter,
	output reg out
);
	always @(posedge clk)
	begin
		out <= 1'b0;
		if (enable)
		begin
			if (counter == maxNum) 
			begin 
				counter <= 0;
				out <= 1'b1;
			end
			else counter <= counter + 1;
		end
	end
endmodule
