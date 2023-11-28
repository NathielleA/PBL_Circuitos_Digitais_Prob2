module flipflopd(input clk, input d, output reg q);

 always @(posedge clk) begin
  if(d)
   q <= d;
 end

endmodule //by: yasmin