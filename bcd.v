`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:01 11/29/2017 
// Design Name: 
// Module Name:    bcd 
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
module bcd(input [3:0] number, output [6:0] tosev
   );
	assign tosev[0] = (number == 4'd0 ? 1'b0: 
							(number == 4'd2 ? 1'b0:
							(number == 4'd3 ? 1'b0:
							(number == 4'd5 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd7 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							 1'b1))))))));
							 
	assign tosev[1] = (number == 4'd0 ? 1'b0: 
							(number == 4'd1 ? 1'b0:
							(number == 4'd2 ? 1'b0:
							(number == 4'd3 ? 1'b0:
							(number == 4'd4 ? 1'b0:
							(number == 4'd7 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							1'b1))))))));
							
	assign tosev[2] = (number == 4'd0 ? 1'b0:
							(number == 4'd1 ? 1'b0:
							(number == 4'd3 ? 1'b0:
							(number == 4'd4 ? 1'b0:
							(number == 4'd5 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd7 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							1'b1)))))))));
							
	assign tosev[3] = (number == 4'd0 ? 1'b0:
							(number == 4'd2 ? 1'b0:
							(number == 4'd3 ? 1'b0:
							(number == 4'd5 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							1'b1)))))));
							
	assign tosev[4] = (number == 4'd2 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd0 ? 1'b0:
							1'b1))));
							
	assign tosev[5] = (number == 4'd4 ? 1'b0:
							(number == 4'd5 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							(number == 4'd0 ? 1'b0:
							1'b1))))));
							
	assign tosev[6] = (number == 4'd2 ? 1'b0:
							(number == 4'd3 ? 1'b0:
							(number == 4'd4 ? 1'b0:
							(number == 4'd5 ? 1'b0:
							(number == 4'd6 ? 1'b0:
							(number == 4'd8 ? 1'b0:
							(number == 4'd9 ? 1'b0:
							1'b1)))))));
endmodule
