`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:12 05/29/2017 
// Design Name: 
// Module Name:    HazardUnit 
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
module HazardUnit(
	//
	input RegWriteM,
	input RegWriteW,
	input [4:0] RsE,
	input [4:0] RtE,
	input [4:0] WriteRegE,
	input [4:0] WriteRegM,
	input [4:0] WriteRegW,
	input MemtoRegE,
	input RegWriteE,
	input [4:0] RsD,
	input [4:0] RtD,
	//br hazard forawrd
	input BranchD,
	input JRD,
	input MemtoRegM,

	output wire ForwardAD,
	output wire ForwardBD,
	output reg [1:0] ForwardAE,
	output reg [1:0] ForwardBE,
	output wire StallF,
	output wire StallD,
	output wire FlushE
	);
wire lwstall;
assign lwstall = ((WriteRegE == RsD) || (WriteRegE == RtD)) && MemtoRegE;

wire branchstall;
assign branchstall = (BranchD && RegWriteE && (WriteRegE == RsD || WriteRegE == RtD)) || //alu -> br
(BranchD && MemtoRegM && (WriteRegM == RsD || WriteRegM == RtD));//lw -> br

wire jrstall;
assign jrstall = (JRD && RegWriteE && WriteRegE == RsD) || (JRD && MemtoRegM && WriteRegE == RsD);

assign StallF = branchstall || lwstall || jrstall;
assign StallD = branchstall || lwstall || jrstall;
assign FlushE = branchstall || lwstall || jrstall;

always @(*)
begin
	ForwardAE = 0;
	ForwardBE = 0;
	if (RegWriteW) begin
		if(RsE != 0 && RsE == WriteRegW)
			ForwardAE = 2'b01;
		if(RtE != 0 && RtE == WriteRegW)
			ForwardBE = 2'b01;
	end

	if (RegWriteM) begin
		if (RsE != 0 && RsE == WriteRegM)
			ForwardAE = 2'b10;
		if (RtE != 0 && RtE == WriteRegM)
			ForwardBE = 2'b10;
	end

end

assign ForwardAD = (RsD != 0) && (RsD == WriteRegM) && RegWriteM;
assign ForwardBD = (RtD != 0) && (RtD == WriteRegM) && RegWriteM;

endmodule
