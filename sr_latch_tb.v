module sr_latch_tb;
 reg r, s;
 wire q, qbar;
 sr_latch DUT(r, s, q, qbar);
 initial
 begin
    $dumpfile("sr_latch_tb.vcd");
    $dumpvars(0, sr_latch_tb);
 end
 initial
 begin
    $display("sr_latch simulation:");
    $monitor("r = %b, s = %b, q = %b, qbar = %b", r, s, q, qbar);
    r = 1; s = 1; #5; // hold
    r = 1; s = 0; #5; // set
    r = 1; s = 1; #5; // hold
    r = 0; s = 1; #5; // reset
    r = 1; s = 1; #5; // hold
    $finish;
 end
endmodule