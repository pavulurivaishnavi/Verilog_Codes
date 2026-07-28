module universal_shift_register_tb;
 reg [3:0]in;
 reg [1:0]sel;
 reg clk, reset;
 wire [3:0]out;
 universal_shift_register DUT(in, clk, reset, sel, out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("universal_shift_register_tb.vcd");
    $dumpvars(0, universal_shift_register_tb);
 end
 initial
 begin
    $display("universal shift register simulation");
    $monitor("time = %0t, in = %b, clk = %b, reset = %b, sel = %b, out = %b", $time, in, clk, reset, sel, out);
    in = 4'b1000; reset = 1'b0; sel = 2'b00; #5;
    in = 4'b1100; reset = 1'b0; sel = 2'b10; #10;
    in = 4'b0110; reset = 1'b1; sel = 2'b10; #10;
    in = 4'b1010; reset = 1'b0; sel = 2'b11; #10;
    in = 4'b1010; reset = 1'b0; sel = 2'b01; #10;
    in = 4'b1010; reset = 1'b0; sel = 2'b10; #10;
    in = 4'b1010; reset = 1'b0; sel = 2'b11; #10;
    in = 4'b1110; reset = 1'b0; sel = 2'b00; #10;
    in = 4'b1011; reset = 1'b0; sel = 2'b11; #10;
    $finish;
 end
endmodule