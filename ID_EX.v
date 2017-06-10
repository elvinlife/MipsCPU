`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:14 05/29/2017 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
	input clk,
	input rst_n,
	
	input RegWriteD,
	input MemtoRegD,
 	input MemWriteD,
 	input [3:0] ALUControlD,
 	input ALUSrcD,
 	input RegDstD,
 	input [31:0] RD1D,
 	input [31:0] RD2D,
 	input [4:0] RsD,
 	input [4:0] RtD,
 	input [4:0] RdD,
 	input [31:0] SignImmD,
 	input FlushE,

 	output reg RegWriteE,
 	output reg MemtoRegE,
 	output reg MemWriteE,
 	output reg [3:0] ALUControlE,
 	output reg ALUSrcE,
 	output reg RegDstE,
	output reg [31:0] RD1E,
 	output reg [31:0] RD2E,
 	output reg [4:0] RsE,
 	output reg [4:0] RtE,
 	output reg [4:0] RdE,
 	output reg [31:0] SignImmE
	);

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		RegWriteE <= 0;
 		MemtoRegE <= 0;
 		MemWriteE <= 0;
 		ALUControlE <= 0;
 		ALUSrcE <= 0;
 		RegDstE <= 0;

	end
	else if (!FlushE)begin
		RegWriteE <= RegWriteD;
 		MemtoRegE <= MemtoRegD;
 		MemWriteE <= MemWriteD;
 		ALUControlE <= ALUControlD;
 		ALUSrcE <= ALUSrcD;
 		RegDstE <= RegDstD;

		RD1E <= RD1D;
		RD2E <= RD2D;
		RsE <= RsD;
		RtE <= RtD;
		RdE <= RdD;
		SignImmE <= SignImmD;
	end
	else begin
		RegWriteE <= 0;
 		MemtoRegE <= 0;
 		MemWriteE <= 0;
 		ALUControlE <= 0;
 		ALUSrcE <= 0;
 		RegDstE <= 0;
	end
end

endmodule
