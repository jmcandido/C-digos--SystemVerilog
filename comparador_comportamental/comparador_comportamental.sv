	
	module comparador_comportamental (output reg
	 menor,igual, maior, input [1:0] x, y);
	 
	  
	 always @(*) begin
	 
	 menor = 0; // f1
	 igual = 0; // f2
	 maior = 0; // f3
	 
	 if (x == y)
	  begin
	 igual = 1;
	 end 
	 else if (x > y)
		begin
		maior = 1;
	 end
	 else 
		begin
		menor = 1;
		end
	end 
	endmodule 
