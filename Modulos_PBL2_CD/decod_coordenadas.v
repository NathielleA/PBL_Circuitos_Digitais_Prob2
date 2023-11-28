module decod_coordenadas(X, L, C); //Decodificador para coordenadas

	input [2:0]L;
	input [2:0]C;
	output[5:0]X;
	
	wire not_L0, not_L1, not_L2;
	wire not_C0, not_C1, not_C2;
	
	wire T1, T2;
	wire U1, U2, U3, U4, U5;
	wire V1, V2, V3, V4, V5, V6, V7;
	wire Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9;
	wire Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8;
	wire W1, W2, W3, W4, W5, W6;
	
	not Inv0(not_L0, L[0]);
	not Inv1(not_L1, L[1]);
	not Inv2(not_L2, L[2]);
	
	not Inv3(not_C0, C[0]);
	not Inv4(not_C1, C[1]);
	not Inv5(not_C2, C[2]);
	
	//Expressao saida X[5]
	and And0(T1, L[2], L[1], C[1]);
	and And1(T2, L[2], L[1], C[2]);
	or Or0(X[5], T1, T2);
	
	//Expressao saida X[4]
	and And2(U1, not_L2, L[1], L[0], C[0]);
	and And3(U2, not_L2, L[1], L[0], C[1]);
	and And4(U3, not_L2, L[1], L[0], C[2]);
	and And5(U4, L[2], not_L1);
	and And6(U5, L2, not_C2, not_C1);
	or Or1(X[4], U1, U2, U3, U4, U5);
	
	//Expressao saida X[3]
	and And7(V1, not_L1, L[0], C[1], C[0]);
	and And8(V2, not_L1, L[0], C[2]);
	and And9(V3, not_L2, L[1], not_L0);
	and And10(V4, L[1], not_C2, not_C1, not_C0);
	and And11(V5, L[2], not_L1, C[2]);
	and And12(V6, L[2], not_L1, L[0]);
	and And13(V7, L[2], L[1], not_C2, not_C1);
	or Or2(X[3], V1, V2, V3, V4, V5, V6, V7);
	
	//Expressao saida X[2]
	and And14(Z1, not_L2, not_L0, C[2]);
	and And15(Z2, not_L2, not_L1, L[0], not_C2, not_C1);
	and And16(Z3, not_L2, not_L1, L[0], not_C2, not_C0);
	and And17(Z4, not_L2, L[0], not_C2, not_C1, not_C0);
	and And18(Z5, not_l2, L[1], not_L0, C[1]);
	and And19(Z6, L[2], not_L1, not_L0, not_C2);
	and And20(Z7, L[2], not_L1, not_C2, C[1], C[0]);
	and And21(Z8, L[2], not_L1, L[0], C[2]);
	and And22(Z9, L[2], L[1], not_C2, not_C1);
	or Or3(X[2], Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9);
	
	//Expressao saida X[1]
	and And23(Y1, not_L1, not_L0, not_C2, C[1]);
	and And24(Y2, not_L1, not_C2, C[1], not_C0);
	and And25(Y3, not_L1, L[0], not_C2, not_C1, C[0]);
	and And26(Y4, L[1], not_L0, not_C1, );
	and And27(Y5, L[1], not_C1, not_C0);
	and And28(Y6, L[1], C[2]);
	and And29(Y7, not_L2, L[1], L[0], C[1], C[0]);
	and And30(Y8, L[2], L[1], not_C1);
	or Or4(X[1], Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8);
	
	//Expressao saida X[0]
	and And31(W1, not_L0, not_C2, C[0]);
	and And32(W2, not_L2, L[0], not_C0);
	and And33(W3, not_L1, L[0], not_C0);
	and And34(W4, not_L2, L[0], C[2]);
	and And35(W5, not_L1, L[0], C[2]);
	and And36(W6, L[2], L[1], not_C2, C0);
	or Or5(X[0], W1, W2, W3, W4, W5, W6);
	
endmodule 