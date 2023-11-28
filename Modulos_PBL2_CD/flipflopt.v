module flipflopt(input clk, input t, output reg q);

 always @(posedge clk) begin
  if (t)
   q <= ~q;
  
  else  
   q <= q;
 end
	
endmodule 