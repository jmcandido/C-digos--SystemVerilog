module bcd_display (input x1, x2, x3, x4, output sa, sb, sc, sd, se, sf, sg);

assign sa = x1 | x3 | (x2 ~^ x4);

assign sb = !x2 | (x3 ~^ x4);

assign sc =  !x3 | x4 | x2;

assign sd = x1 | (!x2 & !x4) | (x2 & !x3 & x4) | (x3 & !x4) | (!x2 & x3);

assign se = (x3 & !x4) | (!x2 & !x4);

assign sf = x1 | (x2 & !x3) | (!x3 & !x4) | (!x4 & x2);

assign sg = x1 | (x3 & !x4) | (x2 ^ x3);

endmodule 
