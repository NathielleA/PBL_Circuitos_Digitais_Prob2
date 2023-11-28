module frequency_divider(input clk, output divclock);
 wire [14:0] W;

 flipflopt fft0(.clk(clk), .t(1'b1), .q(W[0]));
 flipflopt fft1(.clk(W[0]), .t(1'b1), .q(W[1]));
 flipflopt fft2(.clk(W[1]), .t(1'b1), .q(W[2]));
 flipflopt fft3(.clk(W[2]), .t(1'b1), .q(W[3]));
 flipflopt fft4(.clk(W[3]), .t(1'b1), .q(W[4]));
 flipflopt fft5(.clk(W[4]), .t(1'b1), .q(W[5]));
 flipflopt fft6(.clk(W[5]), .t(1'b1), .q(W[6]));
 flipflopt fft7(.clk(W[6]), .t(1'b1), .q(W[7]));
 flipflopt fft8(.clk(W[7]), .t(1'b1), .q(W[8]));
 flipflopt fft9(.clk(W[8]), .t(1'b1), .q(W[9]));
 flipflopt fft10(.clk(W[9]), .t(1'b1), .q(W[10]));
 flipflopt fft11(.clk(W[10]), .t(1'b1), .q(W[11]));
 flipflopt fft12(.clk(W[11]), .t(1'b1), .q(W[12]));
 flipflopt fft13(.clk(W[12]), .t(1'b1), .q(W[13]));
 flipflopt fft14(.clk(W[13]), .t(1'b1), .q(W[14]));
 flipflopt fft15(.clk(W[14]), .t(1'b1), .q(divclock));

endmodule //by: yasmin