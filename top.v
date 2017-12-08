`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:46 05/29/2017 
// Design Name: 
// Module Name:    top 
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
module top(
	input clk,
	input rst_n,
	input [6:0] address,
	input in,
	output [7:0] sel,
	output [3:0] choose
	);
wire [31:0] data;
wire op;
reg if_end;

always @(posedge op or negedge rst_n) begin
	if (!rst_n) begin
		if_end <= 0;
	end
	else begin
		if_end <= 1;
	end
end

SRESIST sresist(clk, in, op);
CPU cpu(clk, rst_n, if_end, address, data);
SHOW show(clk, rst_n, data[15:0], sel, choose);

endmodule
