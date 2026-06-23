module circuit_1(A, B, Z);
 input [1:0]A, B;
 output reg Z;
 always @(*)
 begin
  if (A == B)
    Z = 1;
  else
    Z = 0;
 end
endmodule