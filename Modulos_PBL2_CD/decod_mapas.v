module decod_mapas(M, A);

	input [2:0]A;
	output [34:0]M;

	//Expressao m[34]
	wire T1, T2, T3;

	and And0(T1, A[1], !A[0]);
	and And1(T2, A[2], !A[0]);
	and And2(T3, A[2], A[1]);
	or Or0(M[34], T1, T2, T3);

	//Expressao m[33]
	wire T4, T5;

	and And3(T4, !A[2], !A[0]);
	and And4(T5, A[2], A[1], A[0]);
	or Or1(M[33], T4, T5);

	//Expressao m[32]
	and And5(M[32], ~A[2], ~A[1], ~A[0]);

	//Expressao m[31]
	wire T6, T7, T8;

	and And6(T6, ~A[2], A[1]);
	and And7(T7, A[1], ~A[0]);
	and And8(T8, A[2], ~A[1], A[0]);
	or Or2(M[31], T6, T7, T7);

	//Expressao m[30]
	or Or3(M[30], A[0], A[1], A[2]);

	//Expressao m[29]
	wire T9, T10;

	and And9(T9, ~A[2], A[1]);
	and And10(T10, A[2], ~A[0]);
	or Or4(M[29], T9, T10);

	//Expressao m[28]
	wire T11, T12;

	and And11(T11, ~A[2], A[0]);
	and And12(T12, A[2], A[1]);
	or Or5(M[28], T11, T12);

	//Expressao m[27]
	and And13(M[27], A[2], A[1], ~A[0]);

	//Expressao m[26]
	wire T13, T14;

	and And14(T13, ~A[2], ~A[1]);
	and And15(T14, A[2], A[1], A[0]);
	or Or6(M[26], T13, T14);

	//Expressao m[25]
	wire T15, T16, T17;

	and And16(T15, ~A[1], A[0]);
	and And17(T16, A[2], ~A[1]);
	and And18(T17, A[2], A[0]);
	or Or7(M[25], T15, T16, T17);

	//Expressao m[24]
	and And19(M[24], A[2], ~A[1],~A[0]);

	//Expressao m[23]
	wire T18, T19;

	and And69(T18, ~A[2], A[0]);
	and And20(T19, A[2], ~A[1], ~A[0]);
	or Or8(M[23], T18, T19);

	//Expressao m[22]
	wire T20, T21;

	and And21(T20, ~A[2], ~A[1], ~A[0]);
	and And22(T21, A[2], A[1], A[0]);
	or Or9(M[22], T20, T21);

	//Expressao m[21]
	wire T22, T23;

	and And23(T22, ~A[0], ~A[0]);
	and And24(T23, A[1], ~A[0]);
	or Or10(M[21], T22, T23);

	//Expressao m[20]
	wire T24, T25;

	and And25(T24, ~A[2], ~A[1], A[0]);
	and And26(T25, A[2], A[1], A[0]);
	or Or11(M[20], T24, T25);

	//Expressao m[19]
	wire T26, T27;

	and And27(T26, ~A[2], ~A[1], A[0]);
	and And28(T27, A[2], A[1], A[0]);
	or Or12(M[19], T26, T27);

	//Expressap m[18]
	and And29(M[18], A[2], A[1]);
	
	//Expressao m[17]
	and And30(M[17], A[1], 1'b1);
	
	//Expressao m[16]
	and And31(M[16], A[1], !A[0]);
	
	//Expressao m[15]
	wire T28, T29;
	
	and And41(T28, !A[2], !A[1], A[0]);
	and And42(T29, A[2], A[1]);
	or Or13(M[15], T28, T29);
	
	//Expressao m[14]
	wire T30, T31, T32;
	
	and And43(T30, !A[2], !A[1], !A[0]);
	and And44(T31, !A[2], A[1], A[0]);
	and And45(T32, A[2], !A[1], A[0]);
	or Or14(M[14], T30, T31, T32);
	
	//Expressao m[13]
	wire T33, T34;
	
	and And46(T33, !A[2], !A[1], !A[0]);
	and And47(T34, A[2], !A[1], A[0]);
	or Or15(M[13], T33, T34);
	
	//Expressao m[12]
	and And48(M[12], !A[2], A[1], A[0]);
	
	//Expressao m[11]
	and And49(M[11], !A[2], A[1], A[0]);
	
	//Expressao m[10]
	and And50(M[10], A[2], A[1], !A[0]);
	
	//Expressao m[9]
	or Or16(M[9], A[0], A[1]);
	
	//Expressao m[8]
	wire T35, T36;
	
	and And51(T35, A[1], !A[0]);
	and And52(T36, A[2], A[1]);
	or Or17(M[8], T35, T36);
	
	//Expressao m[7]
	wire T37, T38;
	
	and And53(T37, !A[2], A[0]);
	and And54(T38, !A[2], A[1]);
	
	//Expressao m[6]
	wire T39, T40, T41;
	
	and And55(T39, !A[2], !A[1]);
	and And56(T40, !A[2], !A[0]);
	and And57(T41, A[2], A[1], A[0]);
	
	//Expressao m[5]
	and And58(M[5], A[2], 1'b1);
	
	//Expressao m[4]
	wire T42, T43;
	
	and And59(T42, !A[1], A[0]);
	and And60(T43, A[2], A[1], !A[0]);
	or Or18(M[4], T42, T43);
	
	//Expressao m[3]
	and And61(M[3], !A[2], !A[1]);
	
	//Expressao m[2]
	wire T44, T45, T46;
	
	and And62(T44, !A[2], !A[0]);
	and And63(T45, !A[2], A[1]);
	and And64(T46, A[1], !A[0]);
	or Or19(M[2], T44, T45, T46);
	
	//Expressao m[1]
	wire T47, T48;
	
	and And65(T47, !A[1], !A[0]);
	and And66(T48, A[2], !A[0]);
	
	//Expressao m[0]
	wire T49, T50;
	
	and And67(T49, !A[1], !A[0]);
	and And68(T50, A[2], A[0]);
	
endmodule 