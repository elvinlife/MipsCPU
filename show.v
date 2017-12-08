module SHOW(
	input clk,
	input rst_n,
	input [15:0] data,
	output [7:0] sel,
	output [3:0] choose
	);
wire [3:0] sub_data;
SEG seg(clk, rst_n, data, choose, sub_data);
DECODE decode(sub_data, sel);

endmodule