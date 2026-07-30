module led_blinker_tb;
 reg clk, reset;
 wire out;
 led_blinker DUT(clk, reset, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("led_blinker_tb.vcd");
    $dumpvars(0, led_blinker_tb);
 end
 initial
 begin
    $display("led blinker project");
    $monitor("time = %0t, clk = %b, reset = %b, out = %b", $time, clk, reset, out);
    reset = 1'b0; #5;
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