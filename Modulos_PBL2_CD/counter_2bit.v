module counter_2bit(X, clk);
	
	input clk;
	output [1:0]X;

	flipflopt fft0(.clk(clk), .t(1'b1), .q(X[0]));
	flipflopt fft1(.clk(X[0]), .t(1'b1), .q(X[1]));

endmodule 