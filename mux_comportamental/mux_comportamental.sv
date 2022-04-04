module mux_comportamental (input a, b, sel, output out);


always @ (*) begin 
	if(sel == 0)
		out = a;
	else
		out = b;
	end
endmodule