`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:14:28 05/29/2017 
// Design Name: 
// Module Name:    IF 
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
//done
module IF(
	input clk,
	input rst_n,
	input PCSrcD,
	input [31:0] PCBranchD,
	input StallF,
	input [31:0] PCJumpD,
	input [31:0] PCJRD,
	input JumpD,
	input JRD,
	input [31:0] PCPredictF,
	input PreBr,

	output wire [31:0] InstrF,
	output wire [31:0] PCPlus4F,
	output reg [31:0] PCF
	);

wire [31:0] PCPre;

assign PCPlus4F = PCF + 4;
assign PCPre = JumpD ? PCJumpD : (PCSrcD ? PCBranchD : (JRD ? PCJRD : (PreBr ? PCPredictF : PCPlus4F)));

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		// reset
		PCF <= 0;
	end
	else if (~StallF) begin
		PCF <= PCPre;
	end
	else begin
		PCF <= PCF;
	end
end

wire [6:0] PC;
assign PC = (PCF >> 2);
IRRAM iram(PC, InstrF);

endmodule