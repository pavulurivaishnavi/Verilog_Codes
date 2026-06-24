module ripple_carry_counter_tb;
 reg clk, reset;
 wire [3:0]q;
 ripple_carry_counter DUT(clk, reset, q);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("ripple_carry_counter_tb.vcd");
    $dumpvars(0, ripple_carry_counter_tb);
end

// Test sequence
initial begin
    $display("Ripple Carry Counter Simulation");
    $monitor("time=%0t reset=%b q=%b", $time, reset, q);

    // Apply reset
    reset = 1;
    #12;

    // Release reset
    reset = 0;

    // Let counter run
    #200;

    // Reset again
    reset = 1;
    #10;
    reset = 0;

    #100;
    $finish;
end

endmodule
