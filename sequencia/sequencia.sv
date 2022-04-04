	module sequencia (input clock, reset, output logic S);

	logic[1:0] e_atual;
	logic [1:0] e_anterior;

	parameter s00 = 0, s01 = 1, s10 = 2;

	always_comb begin 
		case (e_atual)
		
		s00: S = 0;
		
		default: S = 1;
		
	endcase
end

	always_ff @ (posedge clock, negedge reset) begin
	  if (~reset)
		e_atual <= s00;
		else begin
			case (e_atual)
			 
			s00: begin
						e_atual <= s01; e_anterior <= s00; 
						end
			s01: begin
						e_atual <= s10; e_anterior <= s01;
						end
			s10: begin
						e_atual <= s00; e_anterior <= s10;
						end
		
    endcase
   end
 end
endmodule 