module example_2(vec, outvec, o2, o1, o0);
 input [2:0]vec;
 output [2:0]outvec;
 output o2, o1, o0;
 assign outvec = vec;
 assign o2 = vec[2];
 assign o1 = vec[1];
 assign o0 = vec[0];
endmodule