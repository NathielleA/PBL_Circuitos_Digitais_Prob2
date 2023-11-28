module mux2x1(input S, input A, input B, output X);

 wire not_S, wire_0, wire_1;
	
 not Inv0(not_S, S);
	
 and And0(wire_0, not_S, A);
 and And1(wire_1, S, B);
 or Or0(X, wire_0, wire_1);

endmodule 