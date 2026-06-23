module circuit_A(x, y, z);
 input x, y;
 output z;
 assign z = (x ^ y) & x;
endmodule
 