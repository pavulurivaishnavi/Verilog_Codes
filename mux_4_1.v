module mux_4_1(a, b, c, d, s0, s1, y);
 input a, b, c, d, s0, s1;
 output y;
 wire y1, y2;
 mux_2_1 M1(.a(a), .b(b), .s0(s0), .y(y1));
 mux_2_1 M2(.a(c), .b(d), .s0(s0), .y(y2));
 mux_2_1 M3(.a(y1), .b(y2), .s0(s1), .y(y));
endmodule
 