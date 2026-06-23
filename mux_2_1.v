module mux_2_1(a, b, s0, y);
 input a, b, s0;
 output y;
 assign y = s0?b:a;
endmodule