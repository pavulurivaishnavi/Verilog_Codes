module comparator_tb;
 reg [3:0] A, B;
 wire A_gt_B, A_ls_B, A_eq_B;
 comparator DUT(A, B, A_gt_B, A_ls_B, A_eq_B);
 initial
 begin
    $dumpfile("comparator_tb.vcd");
    $dumpvars(0, comparator_tb);
 end
 initial
 begin
    $display("comparator simulation");
    $monitor("A = %b, B = %b, A_gt_B = %b, A_ls_B = %b, A_eq_B = %b" , A, B, A_gt_B, A_ls_B, A_eq_B);
    A = 4'b0000; B = 4'b0001; #10;
    A = 4'b0011; B = 4'b0011; #10;
    A = 4'b1111; B = 4'B0100; #10;
 end
endmodule
