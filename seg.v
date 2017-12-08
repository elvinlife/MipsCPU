`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:23 11/23/2017 
// Design Name: 
// Module Name:    seg 
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
module SEG(
	input clk,
	input rst_n,
	input [15:0] q_a,
	output reg [3:0] choose,
	output reg [3:0] data
    );
reg [20:0] count;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// reset
		choose <= 0;
		count <= 0;
	end
	else begin
		count <= count + 1;
		if (count < 21'd100_000)
			choose <= 4'b1110;
		else if (count >= 21'd100_000 && count < 21'd200_000)
			choose <= 4'b1101;
		else if (count >= 21'd200_000 && count < 21'd300_000)
			choose <= 4'b1011;
		else if (count >= 21'd300_000 && count < 21'd400_000)
			choose <= 4'b0111;
		if (count == 21'd400_000)
			count <= 0;
	end
end

always@(*)
begin
	case(choose)
		4'b1110: data = q_a[3:0];
		4'b1101: data = q_a[7:4];
		4'b1011: data = q_a[11:8];
		4'b0111: data = q_a[15:12];
	endcase
end

endmodule
