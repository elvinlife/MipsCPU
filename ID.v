`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:28 05/29/2017 
// Design Name: 
// Module Name:    ID 
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
module ID(
	input clk,
	input rst_n,
	input [31:0] InstrD,
	input RegWriteW,
	input [4:0] WriteRegW,
	input [31:0] ResultW,
	input [31:0] PCPlus4D,
	input [31:0] ALUOutM,
	input ForwardAD,
	input ForwardBD,
	input [31:0] PCF,

	output wire [4:0] RsD,
	output wire [4:0] RtD,
	output wire [4:0] RdD,
	output wire [31:0] RD1,
	output wire [31:0] RD2,
	output wire RegWriteD,
	output wire MemtoRegD,
	output wire MemWriteD,
	output wire [3:0] ALUControlD,
	output wire ALUSrcD,
	output wire RegDstD,
 	output wire PCSrcD,
 	output wire [31:0] SignImmD,
	output wire [31:0] PCBranchD,
	output wire BranchD,
	output wire [31:0] PCJumpD,
	output wire JumpD,
	output wire JRD,
	output wire ClearD,
	output wire BrTrueD
	);

wire [5:0] Opcode;
wire [5:0] Funct;
wire [4:0] BrFunct;
wire [4:0] A1;
wire [4:0] A2;
wire [4:0] A3;
wire [31:0] WD3;
wire [31:0] RD1D;
wire [31:0] RD2D;
wire [2:0] BrTypeD;

assign Opcode = InstrD[31:26];
assign Funct = InstrD[5:0];
assign BrFunct = InstrD[20:16];
assign SignImmD = (InstrD[15] == 0 ? {16'h0000,InstrD[15:0]}:{16'hffff,InstrD[15:0]});

assign A1 = InstrD[25:21];
assign A2 = InstrD[20:16];
assign A3 = WriteRegW;
assign WD3 = ResultW;


REG_FILE reg_file(clk, rst_n, A1, A2, A3, WD3, RegWriteW, RD1D, RD2D);
ControlUnit control_unit(Opcode, Funct, BrFunct, RegWriteD, MemtoRegD, MemWriteD, BranchD, ALUControlD, ALUSrcD, RegDstD, BrTypeD);

assign RD1 = ForwardAD ? ALUOutM : RD1D;
assign RD2 = ForwardBD ? ALUOutM : RD2D;

BrUnit br_unit(RD1, RD2, BrTypeD, BrTrueD);
assign PCBranchD = PCPlus4D + (SignImmD << 2);

assign JumpD = Opcode == 6'b000010;
assign PCJumpD = ((PCPlus4D - 4) & 32'hf0000000) | (InstrD[25:0] << 2);

assign JRD = (Opcode == 6'b0) && (Funct == 6'b001000); 

assign ClearD = (PCSrcD && PCF != PCBranchD) || JumpD || JRD;
assign PCSrcD = BrTrueD && BranchD && (PCF != PCBranchD);

assign RsD = InstrD[25:21];
assign RtD = InstrD[20:16]; 
assign RdD = InstrD[15:11];

endmodule
