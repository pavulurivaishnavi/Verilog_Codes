module jk_ff_tb;
 reg clk, J, K;
 wire Q, Qbar;
 jk_ff DUT(clk, J, K, Q, Qbar);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("jk_ff_tb.vcd");
    $dumpvars(0, jk_ff_tb);
 end
 initial
 begin
    $display("jk_ff simulation:");
    $monitor("$time = %0t, clk = %b, J = %b, K = %b, Q = %b, Qbar = %b", $time, clk, J, K, Q, Qbar);
    J=0; K=0; #10;
    J=0; K=1; #10;
    J=1; K=0; #10;
    J=1; K=1; #10;
    J=1; K=1; #10;
    J=0; K=0; #10;
    $finish;
 end
endmodule