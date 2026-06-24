module t_ff(clk, reset, q);
 input clk, reset;
 output q;
 wire d;
 assign d = ~q;
 d_ff_rca D1(.d(d), .clk(clk), .reset(reset), .q(q));
endmodule