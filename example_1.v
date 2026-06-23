module example_1(a, b, c, d, o1, o2);
 input a, b, c, d;
 output o1, o2;
 wire x1, x2, x3;
 assign x1 = (a&b);
 assign x2 = (c&d);
 assign x3 = x1 | x2;
 assign o1 = x3;
 assign o2 = ~x3;
endmodule