module Comparador #(parameter N=4)(input [N-1:0] a, input [N-1:0] b, output igual, output menor, output mayor);
	always @* begin
		if(a<b) begin
			igual = 0;
			menor = 0;
			mayor = 0;
		end
		else if (a == b) begin
			igual = 1;
			menor = 0;
			mayor = 0;
		end
		else begin
			igual = 0;
			menor = 0;
			mayor = 1;
		end
	end
endmodule; 