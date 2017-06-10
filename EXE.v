`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:02 05/29/2017 
// Design Name: 
// Module Name:    EXE 
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
module EXE(
	//input RegWriteE,
 	//input MemtoRegE,
 	//input MemWriteE,
 	input [3:0] ALUControlE,
 	input ALUSrcE,
 	input RegDstE,
	
	input [1:0] ForwardAE,
	input [1:0] ForwardBE,
	input [31:0] RD1E,
	input [31:0] RD2E,

	input [4:0] RtE,
	input [4:0] RdE,
	input [31:0] SignImmE,
	//input [31:0] PCPlus4E,
	input [31:0] ResultW,
	input [31:0] ALUOutM,

	output wire [31:0] ALUOutE,
	output wire [31:0] WriteDataE,
	output wire [4:0] WriteRegE
	);

wire [31:0] SrcAE;
wire [31:0] SrcBE;

assign SrcAE = ForwardAE == 0 ? RD1E : (ForwardAE == 2'b01 ? ResultW : ALUOutM);
assign WriteDataE = ForwardBE == 0 ? RD2E : (ForwardBE == 2'b01 ? ResultW : ALUOutM);
assign SrcBE = ALUSrcE == 0 ? WriteDataE : SignImmE;
assign WriteRegE = RegDstE == 0 ? RtE : RdE;
//assign PCBranchM = (SignImmE << 2) + PCPlus4E;

ALU alu(
	.alu_a(SrcAE),
	.alu_b(SrcBE),
	.alu_op(ALUControlE),
	.alu_out(ALUOutE)
	);
	
endmodule
