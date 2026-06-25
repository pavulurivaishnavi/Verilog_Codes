module comparator(A, B, A_gt_B, A_ls_B, A_eq_B);
 input [3:0] A, B;
 output A_gt_B, A_ls_B, A_eq_B;
 reg [3:0]x;
 integer i;
 always @(*)
 begin
    for(i = 0; i <=3; i = i + 1)
        x[i] = ~(A[i] ^ B[i]);
 end
 assign A_gt_B = (A[3] & ~B[3]) | (x[3] & A[2] & ~B[2]) | (x[3] & x[2] & A[1] & ~B[1]) | (x[3] & x[2] & x[1] & A[0] & ~B[0]);
 assign A_ls_B = (~A[3] & B[3]) | (x[3] & ~A[2] & B[2]) | (x[3] & x[2] & ~A[1] & B[1]) | (x[3] & x[2] & x[1] & ~A[0] & B[0]);
 assign A_eq_B = x[3] & x[2] & x[1] & x[0];
endmodule