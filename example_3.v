module example_3(x3, x2, x1, f);
 input x3, x2, x1;
 output f;
 wire a, b, c;
 assign c = ~x3;
 assign a = (c&x2);
 assign b = (x1&x3);
 assign f = (a|b);
endmodule