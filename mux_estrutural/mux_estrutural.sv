module mux_estrutural (input a, b, sel, output out);


and a1(sel_b, b, ~sel),
and a2(sel_a, a, sel);
or o1(out, sel_b, sel_a);

endmodule 