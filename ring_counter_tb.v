module ring_counter_tb;
 reg clk, reset;
 wire [3:0]out;
 ring_counter DUT(clk, reset, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("ring_counter_tb.vcd");
    $dumpvars(0, ring_counter_tb);
 end
 initial
 begin
    $display("ring counter simulation");
    $monitor("clk = %b, reset = %b, out = %b", clk, reset, out);
    reset = 1'b0; #5;
    reset = 1'b0; #10;
    reset = 1'b1; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    $finish;
 end
endmodule


