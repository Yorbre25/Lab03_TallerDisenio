module RegistroCargaOutput#(parameter N=4)(input [N:0] resultado, input [3:0] flags, input clk, rst, output [N+4:0] s);
	
	logic [N+4:0] saux;
	always @ (negedge clk or posedge rst)
		if(rst)
			saux=0;
		else
			saux = {flags, resultado};
 
	assign s = saux;

endmodule 