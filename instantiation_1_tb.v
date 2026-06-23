module instantiation_1_tb;
 reg x, y;
 wire z;
 wire a, b, c, d, e, f;
 instantiation_1 DUT(x, y, z);
 initial
 begin
    $dumpfile("instantiation_1_tb.vcd");
    $dumpvars(0, instantiation_1_tb);
 end
 initial
 begin
    $display("instantiation_1 simulation:");
    $monitor("x = %b, y = %b, z = %b", x, y, z);
    x = 0; y = 0; #5;
    x = 0; y = 1; #5;
    x = 1; y = 0; #5;
    x = 1; y = 1; #5;
    $finish;
 end
endmodule