module mux4x1(input [1:0]S, input [1:0]A, input [1:0]B, output X);

 wire [1:0]wire_0;
 wire [1:0]wire_1;
	
 mux2x1 mux0(S[0], A[1], A[0], wire_0);
 mux2x1 mux1(S[0], B[1], B[0], wire_1);
 mux2x1 mux2(S[1], wire_0, wire_1, X);

endmodule 