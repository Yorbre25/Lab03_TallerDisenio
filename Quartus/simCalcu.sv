module simCalcu #(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input [3:0] seleccion, output[N-1:0] salida, output [3:0] flags);
	//logic [N:0] salida;
	//logic [3:0] seleccion_aux
//	resultados
	logic [N:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift;
	
	ALU #(.N(4)) alu1(a, b, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift);
	Mux #(.N(4)) mux1(rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift, seleccion, salida);
	flag_detector flag_dec(seleccion, a[N-1], b[N-1], salida, flags);
	
endmodule 