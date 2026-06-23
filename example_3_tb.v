module example_3_tb;
 reg x3, x2, x1;
 wire f;
 wire a, b, c;
 example_3 DUT(x3, x2, x1, f);
 initial
 begin
    $dumpfile("example_3_tb.vcd");
    $dumpvars(0, example_3_tb);
 end
 initial
 begin
    $display("example_3 simulation");
    $monitor("x3 = %b, x2 = %b, x1 = %b, f = %b", x3, x2, x1, f);
    x3 = 0; x2 = 0; x1 = 0; #10;
    x3 = 0; x2 = 0; x1 = 1; #10;
    x3 = 0; x2 = 1; x1 = 0; #10;
    x3 = 0; x2 = 1; x1 = 1; #10;
    x3 = 1; x2 = 0; x1 = 0; #10;
    x3 = 1; x2 = 0; x1 = 1; #10;
    x3 = 1; x2 = 1; x1 = 0; #10;
    x3 = 1; x2 = 1; x1 = 1; #10;
    $finish;
 end
endmodule