`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:33:03 05/29/2017 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
	input [5:0] Opcode,
	input [5:0] Funct,
	input [4:0] BrFunct,

	output reg RegWriteD,
	output reg MemtoRegD,
 	output reg MemWriteD,
 	output reg BranchD,
 	output reg [3:0] ALUControlD,
 	output reg ALUSrcD,
 	output reg RegDstD,
 	output reg [2:0] BrTypeD
	);

 always@(*)
 begin
	RegWriteD = 0;
	MemtoRegD = 0;
	MemWriteD = 0;
	BranchD = 0;
	ALUControlD = 0;
	ALUSrcD = 0;
	RegDstD = 0;


	case (Opcode)
		6'b0:
			begin
			case(Funct)
				6'b100000: ALUControlD = 4'd1;//add
				6'b100010: ALUControlD = 4'd2;//sub
				6'b100100: ALUControlD = 4'd3;//and
				6'b100101: ALUControlD = 4'd4;//or
				6'b100110: ALUControlD = 4'd5;//xor
				6'b100001: ALUControlD = 4'd1;//addu
				6'b100011: ALUControlD = 4'd2;//subu
				6'b100111: ALUControlD = 4'd6;//nor
				6'b101010: ALUControlD = 4'd7;//slt
				6'b101011: ALUControlD = 4'd8;//sltu
				6'b000100: ALUControlD = 4'd10;//sllv
				6'b000111: ALUControlD = 4'd11;//srav
				6'b000110: ALUControlD = 4'd12;//srlv
				
			endcase	
			RegWriteD = 1;
			RegDstD = 1;
		end
		6'b100011:begin //lw
			RegWriteD = 1;
			MemtoRegD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd1;
		end
		6'b101011:begin //sw
			ALUSrcD = 1;
			MemWriteD = 1;
			ALUControlD = 4'd1;
		end
		6'b001000:begin//addi
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd1;
		end
		6'b001100:begin//andi
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd3;
		end
		6'b001101:begin//ori
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd4;
		end
		6'b001110:begin//xori
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd5;
		end
		6'b001010:begin//slti
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd7;
		end
		6'b001011:begin//sltiu
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd8;
		end
		6'b001111:begin//lui
			RegWriteD = 1;
			ALUSrcD = 1;
			ALUControlD = 4'd9;
		end
		6'b000100:begin//beq
			BranchD = 1;
			BrTypeD = 3'b000;
		end
		6'b000111:begin//bgtz
			BranchD = 1;
			BrTypeD = 3'b001;
		end
		6'b000001:begin //bltz, bgez
			BranchD = 1;
			case (BrFunct)
			5'd1: BrTypeD = 3'b011; //bgez
			5'd0: BrTypeD = 3'b010; //bltz
			endcase	
		end
		6'b000110:begin //blez
			BranchD = 1;
			BrTypeD = 3'b100;
		end
		6'b000101:begin //bne
			BranchD = 1;
			BrTypeD = 3'b101;
		end
	
		endcase
end
 
endmodule