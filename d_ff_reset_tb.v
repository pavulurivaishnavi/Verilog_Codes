module d_ff_reset_tb;
 reg clk, reset, d;
 wire q, qbar;
 d_ff_reset DUT(clk, reset, d, q, qbar);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial begin
    reset = 0;
    forever #45 reset = ~reset;
 end
 initial
 begin
    $dumpfile("d_ff_reset_tb");
    $dumpvars(0, d_ff_reset_tb);
 end
 initial
 begin
    $display("d_ff using reset simulation:");
    $monitor("time = %0t, clk = %b, reset = %b, d = %b, q = %b, qbar = %b", $time, clk, reset, d, q, qbar);
    d = 0; #8;
    d = 1; #4;
    d = 0; #10;
    d = 1; #10;
    $finish;
 end
endmodule