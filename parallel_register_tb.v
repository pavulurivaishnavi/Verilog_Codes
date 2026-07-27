module parallel_register_tb;
 reg [3:0]in;
 reg load, clk, reset;
 wire [3:0]out;
 parallel_register DUT(in, clk, reset, load, out);
 initial
    clk = 0;
 always #10 clk = ~clk;
 initial
 begin
    $dumpfile("parallel_register_tb.vcd");
    $dumpvars(0, parallel_register_tb);
 end
 initial
 begin
    $display("4 bit parallel register");
    $monitor("in = %b, clk = %b, reset = %b, load = %b, out = %b", in, clk, reset, load, out);
    in = 4'b0001; reset = 1'b0; load = 1'b0; #10;
    in = 4'b0011; reset = 1'b1; load = 1'b0; #10;
    in = 4'b1111; reset = 1'b0; load = 1'b1; #10;
    $finish;
 end
endmodule