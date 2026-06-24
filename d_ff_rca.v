module d_ff_rca(clk, reset, d, q);
 input d, clk, reset;
 output reg q;
 always @(posedge reset or negedge clk)
  begin
    if(reset)
     q <= 1'b0;
    else
     q <= d;
  end
endmodule