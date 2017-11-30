`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Data:    00:10:58 05/29/2017 
// Design Name: 
// Module Name:    cpu 
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
module CPU(
	input clk,
	input rst_n
	);

wire RegWriteD;
wire MemtoRegD;
wire MemWriteD;
wire [3:0] ALUControlD;
wire ALUSrcD;
wire RegDstD;

wire RegWriteE;
wire MemtoRegE;
wire MemWriteE;
wire [3:0] ALUControlE;
wire ALUSrcE;
wire RegDstE;

wire RegWriteM;
wire MemtoRegM;
wire MemWriteM;

wire RegWriteW;
wire MemtoRegW;

//hazard signals
wire StallF;
wire StallD;
wire ForwardAD;
wire ForwardBD;
wire FlushE;
wire [1:0] ForwardAE;
wire [1:0] ForwardBE;
wire [31:0] InstrF;
wire [31:0] PCPlus4F;
wire [31:0] PCF;

wire [31:0] InstrD;
wire [31:0] PCPlus4D;

wire [4:0] RsD;
wire [4:0] RtD;
wire [4:0] RdD;
wire [31:0] RD1D;
wire [31:0] RD2D;
wire [31:0] SignImmD;
wire PCSrcD;
wire [31:0] PCBranchD;
wire JumpD;
wire [31:0] PCJumpD;
wire JRD;
wire ClearD;
wire BrTrueD;


wire [31:0] RD1E;
wire [31:0] RD2E;
wire [4:0] RsE;
wire [4:0] RtE;
wire [4:0] RdE;
wire [31:0] SignImmE;

wire [31:0] ALUOutE;
wire [31:0] WriteDataE;
wire [4:0] WriteRegE;

wire [31:0] ALUOutM;
wire [31:0] WriteDataM;
wire [4:0] WriteRegM;

wire [31:0] ReadDataM;

wire [31:0] ReadDataW;
wire [31:0] ALUOutW;
wire [4:0] WriteRegW;

wire [31:0] ResultW;
assign ResultW = MemtoRegW ? ReadDataW : ALUOutW;

IF if_(
	.clk(clk),
	.rst_n(rst_n),
	.PCSrcD(PCSrcD),
	.PCBranchD(PCBranchD),
	.StallF(StallF),
	.PCJumpD(PCJumpD),
	.JRD(JRD),
	.JumpD(JumpD),
	.PCJRD(RD1D),
	.InstrF(InstrF),
	.PCPlus4F(PCPlus4F),
	.PCF(PCF)
	);

IF_ID if_id(
	.clk(clk),
	.rst_n(rst_n),
	.InstrF(InstrF),
	.PCPlus4F(PCPlus4F),
	.StallD(StallD),
	.ClearD(ClearD),

	.InstrD(InstrD),
	.PCPlus4D(PCPlus4D)
	);

ID id_(
	.clk(clk),
	.rst_n(rst_n),
	.InstrD(InstrD),
	.RegWriteW(RegWriteW),
	.WriteRegW(WriteRegW),
	.ResultW(ResultW),
	.PCPlus4D(PCPlus4D),
	.ALUOutM(ALUOutM),
	.ForwardAD(ForwardAD),
	.ForwardBD(ForwardBD),
	.PCF(PCF),
	
	.RsD(RsD),
	.RtD(RtD),
	.RdD(RdD),
	.RD1(RD1D),
	.RD2(RD2D),
	.RegWriteD(RegWriteD),
	.MemtoRegD(MemtoRegD),
	.MemWriteD(MemWriteD),
	.ALUControlD(ALUControlD),
	.ALUSrcD(ALUSrcD),
	.RegDstD(RegDstD),
	.PCSrcD(PCSrcD),
	.SignImmD(SignImmD),
	.PCBranchD(PCBranchD),
	.BranchD(BranchD),
	.PCJumpD(PCJumpD),
	.JumpD(JumpD),
	.JRD(JRD),
	.ClearD(ClearD),
	.BrTrueD(BrTrueD)
	);

ID_EX id_ex(
	.clk(clk),
	.rst_n(rst_n),
	.RegWriteD(RegWriteD),
	.MemtoRegD(MemtoRegD),
	.MemWriteD(MemWriteD),
	.ALUControlD(ALUControlD),
	.ALUSrcD(ALUSrcD),
	.RegDstD(RegDstD),
	.RD1D(RD1D),
	.RD2D(RD2D),
	.RsD(RsD),
	.RtD(RtD),
	.RdD(RdD),
	.SignImmD(SignImmD),
	.FlushE(FlushE),

	.RegWriteE(RegWriteE),
	.MemtoRegE(MemtoRegE),
	.MemWriteE(MemWriteE),
	.ALUControlE(ALUControlE),
	.ALUSrcE(ALUSrcE),
	.RegDstE(RegDstE),
	.RD1E(RD1E),
	.RD2E(RD2E),
	.RsE(RsE),
	.RtE(RtE),
	.RdE(RdE),
	.SignImmE(SignImmE)
	);

EXE exe(
	//.RegWriteE(RegWriteE),
	//.MemtoRegE(MemtoRegE),
	//.MemWriteE(MemWriteE),
	.ALUControlE(ALUControlE),
	.ALUSrcE(ALUSrcE),
	.RegDstE(RegDstE),
	.ForwardAE(ForwardAE),
	.ForwardBE(ForwardBE),
	.RD1E(RD1E),
	.RD2E(RD2E),

	.RtE(RtE),
	.RdE(RdE),
	.SignImmE(SignImmE),
	//.PCPlus4E(PCPlus4E),
	.ResultW(ResultW),
	.ALUOutM(ALUOutM),

	.ALUOutE(ALUOutE),
	.WriteDataE(WriteDataE),
	.WriteRegE(WriteRegE)
	);

EXE_MEM exe_mem(
	.clk(clk),
	.rst_n(rst_n),
	.RegWriteE(RegWriteE),
	.MemtoRegE(MemtoRegE),
	.MemWriteE(MemWriteE),
	.ALUOutE(ALUOutE),
	.WriteDataE(WriteDataE),
	.WriteRegE(WriteRegE),

	.RegWriteM(RegWriteM),
	.MemtoRegM(MemtoRegM),
	.MemWriteM(MemWriteM),
	.ALUOutM(ALUOutM),
	.WriteDataM(WriteDataM),
	.WriteRegM(WriteRegM)
	);

MEM mem(
	.clk(clk),
	.MemWriteM(MemWriteM),
	.ALUOutM(ALUOutM),
	.WriteDataM(WriteDataM),
	.ReadDataM(ReadDataM)
	);

MEM_WB mem_wb(
	.clk(clk),
	.rst_n(rst_n),
	.RegWriteM(RegWriteM),
	.MemtoRegM(MemtoRegM),
	.ReadDataM(ReadDataM),
	.ALUOutM(ALUOutM),
	.WriteRegM(WriteRegM),

	.RegWriteW(RegWriteW),
	.MemtoRegW(MemtoRegW),
	.ReadDataW(ReadDataW),
	.ALUOutW(ALUOutW),
	.WriteRegW(WriteRegW)
	);
	
HazardUnit hazard_unit(
	.RegWriteM(RegWriteM),
	.RegWriteW(RegWriteW),
	.RsE(RsE),
	.RtE(RtE),
	.WriteRegE(WriteRegE),
	.WriteRegM(WriteRegM),
	.WriteRegW(WriteRegW),
	.MemtoRegE(MemtoRegE),
	.RegWriteE(RegWriteE),
	.RsD(RsD),
	.RtD(RtD),
	.BranchD(BranchD),
	.JRD(JRD),
	.MemtoRegM(MemtoRegM),
	.ForwardAD(ForwardAD),
	.ForwardBD(ForwardBD),
	.ForwardAE(ForwardAE),
	.ForwardBE(ForwardBE),
	.StallF(StallF),
	.StallD(StallD),
	.FlushE(FlushE)
);

endmodule
