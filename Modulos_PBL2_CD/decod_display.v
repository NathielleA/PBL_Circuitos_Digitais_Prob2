module decod_display(A, B, C, D, E, F, G, Q); //Decodificador que precede o display
	
	input [3:0]Q;
	output A, B, C, D, E, F, G;
	
	wire not_Q0, not_Q1, not_Q2, not_Q3;
	wire A1, A2, A3, A4, A5;
	wire B1, B2, B3, B4, B5;
	wire C1, C2;
	wire D1, D2, D3, D4;
	wire E1, E2;
	wire F1, F2, F3;
	
	not Inv0(not_Q0, Q[0]);
	not Inv1(not_Q1, Q[1]);
	not Inv2(not_Q2, Q[2]);
	not Inv3(not_Q3, Q[3]);
	
	//Expressao saida A
	and And0(A1, not_Q2, not_Q1, Q[0]);
	and And1(A2, not_Q3, Q[2], not_Q0);
	and And2(A3, not_Q3, Q[2], Q[1]);
	and And3(A4, Q[3], not_Q1, Q[0]);
	and And4(A5, Q[3], not_Q2, Q[1]);
	or Or0(A, A1, A2, A3, A4, A5);
	
	//Expressao saida B
	and And5(B1, not_Q3, Q[1], not_Q0);
	and And6(B2, not_Q2, Q[1], not_Q0);
	and And7(B3, not_Q3, Q[2], Q[0]);
	and And8(B4, Q[3], not_Q2, not_Q1, Q[0]);
	and And9(B5, Q[3], Q[2], not_Q1, not_Q0);
	or Or1(B, B1, B2, B3, B4, B5);
	
	//Expressao saida C
	and And10(C1, not_Q2, Q[1], not_Q0);
	and And11(C2, Q[3], Q[2], not_Q0);
	or Or2(C, C1, C2);
	
	//Expressao saida D
	and And12(D1, not_Q3, not_Q2, not_Q1, Q[0]);
	and And13(D2, not_Q3, Q[2], not_Q1, not_Q0);
	and And14(D3, Q[3], not_Q2, not_Q1, not_Q0);
	and And15(D4, Q[3], Q[2], Q[1]);
	or Or3(D, D1, D2, D3, D4);
	
	//Expressao saida E
	and And16(E1, not_Q3, not_Q2, Q[0]);
	and And17(E2, not_Q3, Q[2], not_Q1);
	or Or4(E, E1, E2);
	
	//Expressao saida F
	and And18(F1, not_Q3, not_Q2, Q[0]);
	and And19(F2, not_Q2, Q[1]);
	and And20(F3, Q[3], Q[2], not_Q1, Q[0]);
	or Or5(F, F1, F2, F3);
	
	//Expressao saida G
	and And21(G, not_Q3, not_Q2, not_Q1);
	
endmodule 