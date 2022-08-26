module ALU #(parameter N=4)(input [N-1:0] A, input [N-1:0] B, output [N-1:0] SSum, SRest, SMod, SMult, SDiv, SAnd, SOr, SXor, SLShift, SRShift);
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

	assign SSum = sumAux;
	assign SRest = restAux;
	assign SMod = modAux;
	assign SMult = multAux;
	assign SDiv = divAux;
	assign SAnd = andAux;
	assign SOr = orAux;
	assign SXor = xorAux;
//	assign SLShift = lShiftAux;
//	assign SRShift = rShiftAux;

endmodule 
