module example_1_tb;
 reg a, b, c, d;
 wire x1, x2, x3, o1, o2;
 example_1 DUT(a, b, c, d, o1, o2);
 initial
 begin
    $dumpfile("example_1_tb.vcd");
    $dumpvars(0, example_1_tb);
 end
 initial
 begin
    $display("example_1_simulation:");
    $monitor("a = %b, b = %b, c = %b, d = %b, o1 = %b, o2 = %b", a, b, c, d, o1, o2);
    a = 0; b = 0; c = 0; d = 0; #10;
    a = 0; b = 0; c = 0; d = 1; #10;
    a = 0; b = 0; c = 1; d = 0; #10;
    a = 0; b = 0; c = 1; d = 1; #10;
    a = 0; b = 1; c = 0; d = 0; #10;
    a = 0; b = 1; c = 0; d = 1; #10;
    a = 0; b = 1; c = 1; d = 0; #10;
    $finish;
 end
endmodule