module RegistroCargaTest();
	logic clk, rst;
	logic [3:0] a, b, seleccion, salida, flags, seleccion_aux;
	logic [6:0] outDisplay1;
	
	RegistroCargaTop #(.N(4)) rCargaTop(a, b, seleccion, clk,rst, outDisplay1, flags, seleccion_aux);
	
	initial begin
	a = 3;
	b = 2;
	clk = 1; #5; seleccion = 0; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 1; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 3; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 1; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 5; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 1; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 7; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 1; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 9; #5; clk = 0; #5;
	clk = 1; #5; seleccion = 1; #5; clk = 0; #5;
	
	end

endmodule 