// No se como calcular el numero de bits de "seleccion" con el parametro
// N, voy a dejarlo en 4bits porque es lo que se oucpa para el Alu de 4bits
module Mux #(parameter N=4)(input [N-1:0] rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift, input[3:0] seleccion, output [N-1:0] salida);
	logic [N-1:0] salidaAux;

	always @(seleccion, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift)
		begin
			case(seleccion)
				0: salidaAux = rSum;
				1: salidaAux = rRest;
				2: salidaAux = rMod;
				3: salidaAux = rMult;
				4: salidaAux = rDiv;
				5: salidaAux = rAnd;
				6: salidaAux = rOr;
				7: salidaAux = rXor;
				8: salidaAux = rLShift;
				9: salidaAux = rRShift;
				default: salidaAux = 1;
			endcase
		end
		
	assign salida = salidaAux;
endmodule 