`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:18 05/29/2017 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
	input clk,
	input rst_n,
	input [31:0] InstrF,
	input [31:0] PCPlus4F,
	input StallD,
	input ClearD,

	output reg [31:0] InstrD,
	output reg [31:0] PCPlus4D
	);

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		// reset
		InstrD <= 0;
		PCPlus4D <= 0;
	end
	else if (~StallD && ~ClearD)begin
		InstrD <= InstrF;
		PCPlus4D <= PCPlus4F;
	end
	else if (~StallD && ClearD)begin
		InstrD <= 0;
		PCPlus4D <= 0;
	end
end

endmodule
