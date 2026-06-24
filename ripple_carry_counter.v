module ripple_carry_counter(clk, reset, q);
 input clk, reset;
 output [3:0]q;
 t_ff T1(.clk(clk), .reset(reset), .q(q[0]));
 t_ff T2(.clk(q[0]), .reset(reset), .q(q[1]));
 t_ff T3(.clk(q[1]), .reset(reset), .q(q[2]));
 t_ff T4(.clk(q[2]), .reset(reset), .q(q[3]));
endmodule
