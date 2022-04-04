module divisor_clock (input clock_input, reset, output logic S);

logic clock_output; 

div b1(.reset(reset), .clock_input(clock_input), .clock_output(clock_output));
div b2(.reset(reset), .clock_input(clock_output), .clock_output(S));



endmodule 
