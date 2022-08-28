//module Calcu #(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input [3:0] seleccion, output[6:0] outDisplay1, output [3:0] flags);
module Calcu #(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input [3:0] seleccion, output[N-1:0] salida, output [3:0] flags);
//	logic [N-1:0] salida;
//	resultados
	logic [N-1:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift;
	
	ALU #(.N(4)) alu1(a, b, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift);
	Mux #(.N(4)) mux1(rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift, seleccion, salida);
//	DisplayHex display1(salida[3], salida[2], salida[1], salida[0], outDisplay1);
endmodule 
