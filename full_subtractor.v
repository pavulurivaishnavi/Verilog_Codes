module full_subtractor(x, y, z, d, b);
 input x, y, z;
 output d, b;
 assign d = x ^ y ^ z;
 assign b = ~x & (y ^ z) | y & z;
endmodule