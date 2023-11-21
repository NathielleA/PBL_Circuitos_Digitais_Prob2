module decod_ataque_col(X, A);//Decodificador para coordenadas de ataque - colunas
	
	input [2:0]A;
	output [3:0]X;
	
	wire not_A2;
	
	not Inv0(not_A2, A[2]);
	
	and And0(X[3], 1'b1, 1'b1);
	and And1(X[2], A[2], 1'b1);
	
	and And2(X[1], not_A2, A[1]);
	and And3(X[0], not_A2, A[0]);
	
endmodule 