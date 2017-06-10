`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Data:    00:38:06 05/29/2017 
// Design Name: 
// Module Name:    EXE_MEM 
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
module EXE_MEM(
	input clk,
	input rst_n,
	input RegWriteE,
	input MemtoRegE,
	input MemWriteE,
	input [31:0] ALUOutE,
	input [31:0] WriteDataE,
	input [4:0] WriteRegE,

	output reg RegWriteM,
	output reg MemtoRegM,
	output reg MemWriteM,
	output reg [31:0] ALUOutM,
	output reg [31:0] WriteDataM,
	output reg [4:0] WriteRegM
	);

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		RegWriteM <= 0;
		MemtoRegM <= 0;
		MemWriteM <= 0;
		
	end
	else begin
		RegWriteM <= RegWriteE;
		MemtoRegM <= MemtoRegE;
		MemWriteM <= MemWriteE;
		ALUOutM <= ALUOutE;
		WriteDataM <= WriteDataE;
		WriteRegM <= WriteRegE;
	end
end

endmodule
