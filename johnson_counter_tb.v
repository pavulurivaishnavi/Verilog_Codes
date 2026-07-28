module johnson_counter_tb;
 reg clk, reset;
 wire [3:0]out;
 johnson_counter DUT(clk, reset, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("johnson_counter_tb.vcd");
    $dumpvars(0, johnson_counter_tb);
 end
 initial
 begin
    $display("johnson counter simulation");
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
    reset = 1'b0; #10;
    $finish;
 end
endmodule