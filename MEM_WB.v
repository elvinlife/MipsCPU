`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:45 05/29/2017 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
	input clk,
	input rst_n,
	input RegWriteM,
	input MemtoRegM,
	input [31:0] ReadDataM,
	input [31:0] ALUOutM,
	input [4:0] WriteRegM,

	output reg RegWriteW,
	output reg MemtoRegW,
	output reg [31:0] ReadDataW,
	output reg [31:0] ALUOutW,
	output reg [4:0] WriteRegW
	);


always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		// reset
		RegWriteW <= 0;
		MemtoRegW <= 0;
		WriteRegW <= 0;
		ALUOutW <= 0;
		WriteRegW <= 0;
	end
	else begin
		RegWriteW <= RegWriteM;
		MemtoRegW <= MemtoRegM;
		ReadDataW <= ReadDataM;
		ALUOutW <= ALUOutM;
		WriteRegW <= WriteRegM;
	end
end

endmodule
