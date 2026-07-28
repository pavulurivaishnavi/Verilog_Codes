module fd_by_four_tb;
 reg clk, reset;
 wire clk_out;
 fd_by_four DUT(clk, reset, clk_out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("fd_by_four_tb.vcd");
    $dumpvars(0, fd_by_four_tb);
 end

 initial
 begin
    $display("frequency divider by 4 simulation");
    $monitor("time = %0t, clk = %b, reset = %b, clk_out = %b", $time, clk, reset, clk_out);
    reset = 1'b0; #5;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b1; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    reset = 1'b0; #10;
    $finish;
 end
endmodule