module d_ff_reset(clk, reset, d, q, qbar);
 input clk, reset, d;
 output reg q;
 output qbar;
 assign qbar = ~q;
 always @(posedge clk)
  begin
    if (reset)
     q <= 0;
    else
     q <= d;
  end
endmodule
