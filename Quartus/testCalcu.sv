module testCalcu();
	logic [3:0] a, b, seleccion, salida, flags;
	logic [6:0] outDisplay1;
	
	Calcu #(.N(4)) calculadora (a, b, seleccion, salida, flags);
	
	
	initial begin
	a = 3;
	b = -2;
	seleccion = 0; #5;
	seleccion = 1; #5;
	seleccion = 2; #5;
	seleccion = 3; #5;
	seleccion = 4; #5;
	seleccion = 5; #5;
	seleccion = 6; #5;
	seleccion = 7; #5;
	seleccion = 8; #5;
	seleccion = 9; #5;
	
	end
endmodule 