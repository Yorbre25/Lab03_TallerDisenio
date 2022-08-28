module RightShift #(parameter N=4)(input [N-1:0] A, output S);
	assign S = A >>> 1;
endmodule 