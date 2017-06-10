`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:22 06/02/2017 
// Design Name: 
// Module Name:    PredictUnit 
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
module PredictUnit(
	input clk,
	input rst_n,
	input PCSrcD,
	input BrTrueD,
	input [31:0] InstrF,
	input [31:0] PCBranchD,

	output reg[31:0] PCPredictF,
	output wire PreBr
	);

reg [1:0] times;
wire [5:0]OpcodeF;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		// reset
		times <= 0;
		PCPredictF <= 0;
	end
	else if (PCSrcD) begin
		if (PCPredictF == PCBranchD) begin
			times <= (times == 2'b11) ? times : times + 1;
		end
		else begin
			times <= (times == 0) ? times : times - 1;
			PCPredictF <= PCBranchD;
		end
	end
end


assign OpcodeF = InstrF[31:26];
assign BrInstr = (OpcodeF == 6'h4 || OpcodeF == 6'h7 || OpcodeF == 6'h1 || OpcodeF == 6'h6|| OpcodeF == 6'h5);
assign PreBr = times > 2'b01 && BrInstr && BrTrueD;

endmodule