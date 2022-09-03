module LeftShift #(parameter N=4)(input [N-1:0] A, output [N-1:0] S);
	assign S = A << 1;
endmodule 