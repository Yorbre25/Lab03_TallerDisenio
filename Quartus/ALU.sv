module ALU #(parameter N=4)(input [N-1:0] A, input [N-1:0] B, output [N-1:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift);
//	logic [N:0] sumAux,restAux,modAux, multAux, divAux, andAux, orAux, xorAux, lShifAux, rShiftAux;
	logic [N-1:0] sumAux,restAux,modAux, multAux, divAux, andAux, orAux, xorAux, lShifAux, rShiftAux;
	
	Suma sumador(A,B,sumAux);
	Resta restador(A,B,restAux);
	Modulo modulador(A,B,modAux); 
	Multiplicacion multiplicador(A,B,multAux);
	Division divisor(A,B,divAux);
//	No juzguen mis nombres, lo intenté
	AndN ander(A,B,andAux);
	OrN orer(A,B,orAux);
	XorN xorer(A,B,xorAux);
//	LShift lShifter(A,B,Ssum);
//	RShift rShifter sumador(A,B,Ssum); 

	assign rSum = sumAux;
	assign rRest = restAux;
	assign rMod = modAux;
	assign rMult = multAux;
	assign rDiv = divAux;
	assign rAnd = andAux;
	assign rOr = orAux;
	assign rXor = xorAux;
//	assign rLShift = lShiftAux;
//	assign rRShift = rShiftAux;

endmodule 
