module mux8x1(input [2:0]S, input [3:0]A, input [3:0]B, output X);

 wire [1:0]wire_0;
 wire [1:0]wire_1;

 mux4x1 mux0(S[1:0], A[1:0], A[3:2], wire_0[0]);
 mux4x1 mux1(S[1:0], B[1:0], B[3:2], wire_1[1]);
 mux4x1 mux2({S[2], S[2]}, wire_0, wire_1, X);

endmodule 