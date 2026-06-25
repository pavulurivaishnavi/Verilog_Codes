module my_xor_tb;
 reg x, y;
 wire f, a, b, c, d;
 my_xor DUT(x, y, f);
 initial
 begin
    $dumpfile("my_xor_tb.vcd");
    $dumpvars(0, my_xor_tb);
 end
 initial
 begin
    $display("xor gate simulation:");
    $monitor("x = %b, y = %b, f = %b", x, y, f);
    x = 0; y = 0; #10;
    x = 0; y = 1; #10;
    x = 1; y = 0; #10;
    x = 1; y = 1; #10;
 end
endmodule