module up_down_counter_tb;
 reg clk, reset, c_up, c_down;
 wire [3:0]out;
 up_down_counter DUT(clk, reset, c_up, c_down, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("up_down_counter_tb.vcd");
    $dumpvars(0, up_down_counter_tb);
 end
 initial
 begin
    $display("simulating up down counter");
    $monitor("time = %0t, clk = %b, reset = %b, c_up = %b, c_down = %b, out = %b", $time, clk, reset, c_up, c_down, out);
    reset = 1'b0; c_up = 1'b0; c_down = 1'b0; #5;
    reset = 1'b1; c_up = 1'b0; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b0; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b1; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b0; c_down = 1'b1; #10;
    reset = 1'b0; c_up = 1'b0; c_down = 1'b1; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b1; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    reset = 1'b0; c_up = 1'b1; c_down = 1'b0; #10;
    $finish;
 end
endmodule