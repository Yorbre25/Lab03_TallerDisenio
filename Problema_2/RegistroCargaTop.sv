module RegistroCargaTop #(parameter N=4) (input[N-1:0] a, b, input [3:0] seleccion, input clk, rst, output[6:0] outDisplay, output [3:0] flags, output [3:0] seleccion_aux);

	logic [2*N+3:0] sRegInput;
	logic [N+4:0] sRegOutput;
	logic [N:0] salidaALU;
	logic [3:0] flags_aux;
	logic [N-1:0] a_aux;
	logic [N-1:0] b_aux;
	logic [3:0] selec_aux;
	//logic [N:0] salida; 
   //resultados
	logic [N:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift;
	
	//FF para los botones
	Button_Switch button1(seleccion[0], seleccion_aux[0]);
   Button_Switch button2(seleccion[1], seleccion_aux[1]);
   Button_Switch button3(seleccion[2], seleccion_aux[2]);
   Button_Switch button4(seleccion[3], seleccion_aux[3]);
	
	//Creacion del Registro Input
	RegistroCargaInput regCargaIn(a,b,seleccion_aux,clk, rst, sRegInput);
	
	//Asignacion de las entradas de la ALU
	assign a_aux = sRegInput[(N-1):0];
	assign b_aux = sRegInput[(2*N-1):N];
	assign selec_aux = sRegInput[(2*N+3):(2*N)];
	

	//ALU
	ALU #(.N(4)) alu_(a_aux, b_aux, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift);
	Mux #(.N(4)) mux_(rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift, selec_aux , salidaALU);
	flag_detector flag_dec(selec_aux, a_aux[N-1], b_aux[N-1], salidaALU, flags_aux);
	
	//Creacion del Registro oUTPUT
	RegistroCargaOutput regCargaOut(salidaALU, flags_aux,clk, rst, sRegOutput);
	
	//Representarlo en la FPGA
	assign salida = sRegOutput[N:0];
	DisplayHex display2(salida[3], salida[2], salida[1], salida[0], outDisplay);
	assign flags = sRegOutput[N+4:N+1];
	
endmodule 