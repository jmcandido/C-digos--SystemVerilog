
module andOr (input X, A, B, output out);


always @ (*) begin
 
 if(X)
	 out = A&B;
  else
	 out = A|B;
end

endmodule 