module select_led_blink_tb;
 reg clk, reset;
 reg [1:0] sel;
 wire out;
 select_led_blink DUT(clk, reset, sel, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("select_led_blink_tb.vcd");
    $dumpvars(0, select_led_blink_tb);
 end
 initial
 begin
    $display("simulation of selectable LED Blink");
    $monitor("time = %0t, clk = %b, reset = %b, sel = %b, out = %b", $time, clk, reset, sel, out);
    reset = 1'b0; sel = 2'b00; #5;
    reset = 1'b1; sel = 2'b00; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b10; #10;
    reset = 1'b0; sel = 2'b10; #10;
    reset = 1'b0; sel = 2'b11; #10;
    reset = 1'b0; sel = 2'b11; #10;
    $finish;
 end
endmodule

