module Calcu #(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input [3:0] seleccion, output[6:0] outDisplay, output [3:0] flags, output [3:0] seleccion_aux);
//module Calcu #(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input [3:0] seleccion, output[N-1:0] salida, output [3:0] flags);
	logic [N:0] salida;
	//logic [3:0] seleccion_aux
//	resultados
	logic [N:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift;
	
	Button_Switch button1(seleccion[0], seleccion_aux[0]);
   Button_Switch button2(seleccion[1], seleccion_aux[1]);
   Button_Switch button3(seleccion[2], seleccion_aux[2]);
   Button_Switch button4(seleccion[3], seleccion_aux[3]);
	
	ALU #(.N(4)) alu1(a, b, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift);
	Mux #(.N(4)) mux1(rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift, seleccion_aux, salida);
	
	DisplayHex display2(salida[3], salida[2], salida[1], salida[0], outDisplay);
	flag_detector flag_dec(seleccion_aux, a[N-1], b[N-1], salida, flags);
	
endmodule 
