`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:52 11/23/2017 
// Design Name: 
// Module Name:    decode 
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
module DECODE(
	input [3:0] cnt_data,
	output reg [7:0] data
    );

always@(*)
begin
  case(cnt_data)
	4'h0: data = 8'b1100_0000;
	4'h1: data = 8'b1111_1001;
	4'h2: data = 8'b1010_0100;
	4'h3: data = 8'b1011_0000;
	4'h4: data = 8'b1001_1001;
	4'h5: data = 8'b1001_0010;
	4'h6: data = 8'b1000_0010;
	4'h7: data = 8'b1111_1000;
	4'h8: data = 8'b1000_0000;
	4'h9: data = 8'b1001_0000;
	4'ha: data = 8'b1000_1000;
	4'hb: data = 8'b1000_0011;
	4'hc: data = 8'b1010_0111;
	4'hd: data = 8'b1010_0001;
	4'he: data = 8'b1000_0110;
	4'hf: data = 8'b1000_1110;
	default: data = 8'b1111_1111;
	endcase
end

endmodule
