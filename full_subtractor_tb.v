module full_subtractor_tb;
 reg x, y, z;
 wire d, b;
 full_subtractor DUT(x, y, z, d, b);
 initial
 begin
    $dumpfile("full_subtractor_tb.vcd");
    $dumpvars(0, full_subtractor_tb);
 end
 initial
 begin
    $display("full_subtractor simulation");
    $monitor("x = %b, y = %b, z = %b, d = %b, b = %b", x, y, z, d, b);
    x = 0; y = 0; z = 0; #4;
    x = 0; y = 0; z = 1; #4;
    x = 0; y = 1; z = 0; #4;
    x = 0; y = 1; z = 1; #4;
    x = 1; y = 0; z = 0; #4;
    x = 1; y = 0; z = 1; #4;
    x = 1; y = 1; z = 0; #4;
    x = 1; y = 1; z = 1; #4;
 end
endmodule
