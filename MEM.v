`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Data:    00:38:38 05/29/2017 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
	input clk,
	input MemWriteM,
	input [31:0] ALUOutM,
	input [31:0] WriteDataM,
	output [31:0] ReadDataM
	);
wire [6:0] DramA;
assign DramA = ALUOutM >> 2;

DRAM dram(
	.a(DramA),
	.d(WriteDataM),
	.clk(clk),
	.we(MemWriteM),
	.spo(ReadDataM)
	);

endmodule
