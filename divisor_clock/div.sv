module div (input reset, clock_input, output logic clock_output);

logic [1:0] contador;

always_ff @ (posedge clock_input)
	begin
	
	if (!reset)
	 begin
			clock_output <= 0;
			contador = 0;
	 end
	else
	 begin
	    if (contador == 2'd1)
		  begin
		    clock_output <= ~ clock_output;
			 contador <= 2'd0;
			 end
		 else
			 contador <= contador + 2'd1;
		end
	end
endmodule
			 
		
	
	