`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:21 05/29/2017 
// Design Name: 
// Module Name:    BrUnit 
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
module BrUnit(
	input signed [31:0] RD1,
	input signed [31:0] RD2,
	input [2:0] BrType,
	
	output reg BrTrue
	);

always@(*) begin
	BrTrue = 0;
	case (BrType)
		3'b000:begin //beq
			if (RD1 == RD2)
			BrTrue = 1;
		end
		3'b001:begin //bgtz
			if (RD1 > 0)
			BrTrue = 1;
		end
		3'b010:begin //bltz
			if (RD1 < 0)
			BrTrue = 1;
		end
		3'b011:begin //bgez
			if (RD1 >= 0)
			BrTrue = 1;
		end
		3'b100:begin
			if (RD1 <= 0) //blez
			BrTrue = 1;
		end
		3'b101:begin
			if (RD1 != RD2) //bne
			BrTrue = 1;
		end
	endcase

end

endmodule
