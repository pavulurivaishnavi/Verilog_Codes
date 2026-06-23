module d_ff(clk, d, q, qbar);
 input clk, d;
 output reg q;
 output qbar;
 assign qbar = ~q;
 always @(posedge clk)
  begin
     q = d;
  end
endmodule