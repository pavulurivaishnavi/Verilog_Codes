module my_xor(x, y, f);
 input x, y;
 output f;
 wire a, b, c, d;
 not n1(a, x);
 not n2(b, y);
 and a1(c, a, y);
 and a2(d, x, b);
 or o1(f, c, d);
endmodule