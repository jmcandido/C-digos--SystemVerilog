	
	module maquina_vendas (input clock, A , B, reset, output logic S);
	
	
	logic [2:0] e_atual;
	logic [2:0] e_anterior;
	
	parameter E0 = 0, E25 = 1, E50 = 2, E75 = 3,E100 = 4, E125 = 5, E150 = 6;
	
	always_comb begin 
		case (e_atual)
		
		E150: S = 1;
		
		default: S = 0;
		
	endcase
	end
	
	always_ff @ (posedge clock, negedge reset) begin
	  if (~reset)
		e_atual <= E0;
		else begin
			case (e_atual)
			 
			E0: begin
			
				 if (!A & B) begin
						e_atual <= E25; e_anterior <= E0; 
						end
				else if (A & !B) begin
						e_atual <= E50; e_anterior <= E0; 
						end
						
				else if (A & B) begin
						e_atual <= E100; e_anterior <= E0;
						end
						
					end
					
			E25: begin
			
				 if (!A & B) begin
						e_atual <= E50; e_anterior <= E25; 
						end
				else if (A & !B) begin
						e_atual <= E75; e_anterior <= E25; 
						end
						
				else if (A & B) begin
						e_atual <= E125; e_anterior <= E25;
						end
						
					end
					
			E50: begin
			
				 if (!A & B) begin
						e_atual <= E75; e_anterior <= E50; 
						end
				else if (A & !B) begin
						e_atual <= E100; e_anterior <= E50; 
						end
						
				else if (A & B) begin
						e_atual <= E150; e_anterior <= E50;
						end
						
					end
					
			E75: begin
			
				 if (!A & B) begin
						e_atual <= E100; e_anterior <= E75; 
						end
				else if (A & !B) begin
						e_atual <= E125; e_anterior <= E75; 
						end
						
				else if (A & B) begin
						e_atual <= E150; e_anterior <= E75;
						end
						
					end
					
				E100: begin
			
				 if (!A & B) begin
						e_atual <= E125; e_anterior <= E100; 
						end
				else if (A & !B) begin
						e_atual <= E150; e_anterior <= E100; 
						end
						
				else if (A & B) begin
						e_atual <= E150; e_anterior <= E100;
						end
						
					end
					
				E125: begin
			
				 if (!A & B) begin
						e_atual <= E150; e_anterior <= E125; 
						end
				else if (A & !B) begin
						e_atual <= E150; e_anterior <= E125; 
						end
						
				else if (A & B) begin
						e_atual <= E150; e_anterior <= E125;
						end
						
					end
					
				E150: begin
						e_atual <= E0; e_anterior <= E150; 
			
					end
	 endcase
	end
 end
	endmodule 