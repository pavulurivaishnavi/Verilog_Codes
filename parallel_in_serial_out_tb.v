module parallel_in_serial_out_tb;
 reg [3:0]in;
 reg clk, reset, load;
 wire out;
 parallel_in_serial_out DUT(in, clk, reset, load, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("parallel_in_serial_out_tb.vcd");
    $dumpvars(0, parallel_in_serial_out_tb);
 end
 initial
 begin
    $display("parallel input serial output shift register");
    $monitor("time = %0t, in = %b, clk = %b, reset = %b, load = %b, out = %b", $time, in, clk, reset, load, out);
    in = 4'b1011; reset = 1'b0; load = 1'b0; #5;
    in = 4'b1001; reset = 1'b0; load = 1'b0; #10;
    in = 4'b1011; reset = 1'b1; load = 1'b0; #10;
    in = 4'b1011; reset = 1'b0; load = 1'b1; #10;
    in = 4'b1010; reset = 1'b0; load = 1'b1; #10;
    in = 4'b1001; reset = 1'b0; load = 1'b0; #10;
    in = 4'b1011; reset = 1'b0; load = 1'b1; #10;
    $finish;
 end
endmodule
