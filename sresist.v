`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:13 11/16/2017 
// Design Name: 
// Module Name:    sresist 
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
module SRESIST(
	input clk,
	input in,
	output reg op
    );
reg ol;
reg [1:0] cnt;
always @(posedge clk)
begin
	if (~in)
		cnt <= 0;
	else
	begin
		if (cnt < 2'b11)
			cnt <= cnt + 1;
		else
			cnt <= 2'b11;
	end
end

always @(posedge clk)
begin
	if (cnt == 2'b11)
		ol <= 1'b1;
	else
		ol <= 1'b0;
end

always @(posedge clk)
begin
	if (cnt == 2'b11 && ol == 1'b0)
		op <= 1'b1;
	else
		op <= 1'b0;
end

endmodule
