
	 module detector_de_padrao
	 
	(output reg y,
	input clock, x, reset);

	reg [1:0] e_atual, e_anterior;

	parameter sinic = 0, s1 = 1, s11 = 2, s110 = 3;

	always @ (*) begin 

	case (e_atual)
	
	sinic: y = 0;
	s1: begin
		if(e_anterior == s110)
		y = 1;
		else y = 0;
		end
	s11: y = 0;
	s110: y = 0;
	endcase
end

	always @ (posedge clock, posedge reset) 
	  if (reset)
		e_atual <= sinic;
		else
			 case (e_atual)
			 
			sinic: if (x == 0)
			e_atual <= sinic;
			else begin
			e_atual <= s1; e_anterior <= sinic; 
			end
		
			s1: if (x == 0) begin
			e_atual <= sinic; e_anterior <= s1; 
			end
			else begin
			e_atual <= s11; e_anterior <= s1; 
			end
		
			s11: if (x == 0) begin
			e_atual <= s110; e_anterior <= s11;
			end
			else begin
			 e_atual <= s11; e_anterior <= s11;
			end
			
			s110: if (x == 0) begin
			e_atual <= sinic; e_anterior <= s110; 
			end
			else begin
			e_atual <= s1; e_anterior <= s110; 
			end
		
   endcase
endmodule
	