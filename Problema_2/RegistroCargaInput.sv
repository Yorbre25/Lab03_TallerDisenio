module RegistroCargaInput #(parameter N=4)(input [N-1:0] a, b, input [3:0] seleccion, input clk, rst, output [2*N+3:0] s);
	logic saux = 0;
	always @ (posedge clk or posedge rst)
		if(rst)
			saux=0;
		else
			saux = {seleccion,b, a};
 
	assign s = saux;

endmodule 