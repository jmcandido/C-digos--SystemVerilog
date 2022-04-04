module display_case (input x1, x2, x3, x4, output SA, SB ,SC ,SD ,SE ,SF ,SG);

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0001: SA = 0;
	4'b0100: SA = 0;
	default: SA = 1;
	endcase
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0101: SB = 0;
	4'b0110: SB = 0;
	default: SB = 1;
	endcase
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0010: SC = 0;
	default: SC = 1;
	endcase	
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0001: SD = 0;
	4'b0100: SD = 0;
	4'b0111: SD = 0;
	default: SD = 1;
	endcase
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0001: SE = 0;
	4'b0011: SE = 0;
	4'b0100: SE = 0;
	4'b0101: SE = 0;
	4'b0111: SE = 0;
	4'b1001: SE = 0;
	default: SE = 1;
	endcase
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0001: SF = 0;
	4'b0010: SF = 0;
	4'b0011: SF = 0;
	4'b0111: SF = 0;
	default: SF = 1;
	endcase
end

always @ (*) begin
	case ({x1, x2, x3, x4})
	4'b0000: SG = 0;
	4'b0001: SG = 0;
	4'b0111: SG = 0;
	default: SG = 1;
	endcase
end

endmodule 