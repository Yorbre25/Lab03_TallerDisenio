module flag_detector #(parameter N=4)(input [3:0] seleccion, input a0, input b0, input [N:0] salida, output [3:0] flags);
	logic overflow_aux, flag0, flag1, flag2, flag3;
	Overflow overflow(a0, b0, salida[N-1], seleccion, overflow_aux);
	always @* begin
		//Flag Cero flags[0]
		if(salida == 0)
			flag0 = 1'b1;
			
		else
			flag0 = 1'b0;
	
	end
	
	always @* begin
		if(seleccion == 0)
			//Flag Acarreo flags[1]
			flag1 = salida[N];
		else 
			flag1 = 1'b0;
	end
			
	
	always @* begin
		if(seleccion < 3)begin
			//Flag Overflow flags[2]
			flag2 = overflow_aux;
			//Flag Negativo flags[3]
			flag3 = ~(overflow_aux | ~salida[N-1]); 
		end
		
		else begin
			flag2 = 1'b0; 
			flag3 = 1'b0; 
		end
		
	end
	
	assign flags[0] = flag0;
	assign flags[1] = flag1;
	assign flags[2] = flag2;
	assign flags[3] = flag3;
endmodule 