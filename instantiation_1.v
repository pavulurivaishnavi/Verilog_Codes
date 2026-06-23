module instantiation_1(x, y, z);
 input x, y;
 output z;
 wire a, b, c, d, e, f;

 // first block A1
 circuit_A IA1(.x(x), .y(y), .z(a));

 // second block B1
 circuit_B IB1(.x(x), .y(y), .z(b));

 // third block A2
 circuit_A IA2(.x(x), .y(y), .z(c));

 // fourth block B1
 circuit_B IB2(.x(x), .y(y), .z(d));

 assign e = a | b;
 assign f = c & d;
 assign z = e ^ f;
endmodule