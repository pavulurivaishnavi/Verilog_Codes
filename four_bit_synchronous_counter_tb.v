module four_bit_synchronous_counter_tb;
 reg clk, clear, count_enable;
 wire [3:0]Q, Qbar;
 four_bit_synchronous_counter BUT(clk, clear, count_enable, Q, Qbar);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("four_bit_synchronous_counter_tb.vcd");
    $dumpvars(0, four_bit_synchronous_counter_tb);
 end
 initial
 begin
    $display("four bit counter simulation");
    $monitor("time = %0t, clk = %b, clear = %b, count_enable = %b, Q = %b, Qbar = %b",$time, clk, clear, count_enable, Q, Qbar);
    clear = 0;
    count_enable = 0;
    #12;
    clear = 1;
    count_enable = 1;
    #80;
    count_enable = 0;
    #30;
    count_enable = 1;
  #140;
    $finish;
 end
endmodule

