	
	module motor_unipolar (input clock, H , A, reset, output logic P, M, L, Y);

	
	logic [1:0] e_atual;
	logic [1:0] e_anterior;

	parameter E1 = 0, E2 = 1, E3 = 2, E4 = 3;

	always_comb begin 
		case (e_atual)
		
		E1: begin
			P = 1; M = 0; L = 0; Y = 1; 
		end
		
		E2: begin
			P = 1; M = 0; L = 1; Y = 0; 
		end
		
		E3: begin 
			P = 0; M = 1; L = 1; Y = 0; 
		end
		
		E4: begin 
			P = 0; M = 1; L = 0; Y = 1;  
		end
		
	endcase
end

	always_ff @ (posedge clock, negedge reset) begin
	  if (~reset)
		e_atual <= E1;
		else begin
			case (e_atual)
			 
			E1: begin
			
				 if (!H & A) begin
						e_atual <= E4; e_anterior <= E1; 
						end
				else if (H & !A) begin
						e_atual <= E2; e_anterior <= E1; 
						end		
				end
					
			E2: begin
				
				 if (!H & A) begin
						e_atual <= E1; e_anterior <= E2; 
						end
				else if (H & !A) begin
						e_atual <= E3; e_anterior <= E2; 
						end
				 end
				 
			E3: begin
			
				 if (!H & A) begin
						e_atual <= E2; e_anterior <= E3; 
						end
				else if (H & !A) begin
						e_atual <= E4; e_anterior <= E3; 
						end
				end
				
			E4: begin
			
				 if (!H & A) begin
						e_atual <= E3; e_anterior <= E4; 
						end
				else if (H & !A) begin
						e_atual <= E1; e_anterior <= E4; 
						end
				end
    endcase
   end
 end
endmodule 