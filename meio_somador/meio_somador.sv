	
		module meio_somador ( input A, B, output Sum, Carry);


		always @ (*) begin
			case ({A, B})
			2'b01: Sum = 1;
			2'b10: Sum = 1;
			default: Sum = 0;
			endcase
		end
		
		always @ (*) begin
			case ({A,B})
			2'b11: Carry = 1;
			default: Carry = 0;
		endcase
		end
	endmodule

