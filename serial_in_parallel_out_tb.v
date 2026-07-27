module serial_in_parallel_out_tb;
 reg in, clk, reset;
 wire [3:0]out;
 serial_in_parallel_out DUT(in, clk, reset, out);
 initial
    clk = 0;
 always #5 clk = ~clk;
 initial
 begin
    $dumpfile("serial_in_parallel_out_tb.vcd");
    $dumpvars(0, serial_in_parallel_out_tb);
 end
 initial
 begin
    $display("serial in parallel out register");
    $monitor("in = %b, clk = %b, reset = %b, out = %b", in, clk, reset, out);
    in = 1'b1; reset = 1'b0; #5;
    in = 1'b1; reset = 1'b0; #5;
    in = 1'b1; reset = 1'b0; #5;
    in = 1'b0; reset = 1'b1; #5;
    in = 1'b0; reset = 1'b1; #5;
    in = 1'b1; reset = 1'b0; #5;
    in = 1'b1; reset = 1'b0; #10;
    in = 1'b0; reset = 1'b0; #10;
    in = 1'b1; reset = 1'b0; #10;
    $finish;
 end
endmodule
