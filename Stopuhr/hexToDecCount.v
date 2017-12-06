`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:52 12/06/2017 
// Design Name: 
// Module Name:    hexToDecCount 
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
module hexToDecCount(
	input clk, 
	input masterreset, 
	inout running,
	output dec
);
	always @(posedge clk, negedge running, posedge masterreset) //erhoeht Zahl um 1 bis "10" erreicht wurde
	begin
		if (masterreset) number0 <= number1 <= number2 <= number3 <=0;
		else if (running)
		begin
			if (number0 > 8)
			begin
				number0 <= 0;
				number1 <= number1 +1;
			end
			else number0 <= number0 + 1;
			if (number1 > 8)
			begin
				number1 <=0;
				number2 <= number2 +1;
			end
			if (number2 >8)
			begin
				number2 <=0;
				number3 <= number3 +1;
			end
			if (number3 > 8) 
			begin
				running = 0;
			end
		end
	end
endmodule
