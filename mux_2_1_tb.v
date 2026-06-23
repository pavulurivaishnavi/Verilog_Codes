module mux_2_1_tb;
 reg a, b, s0;
 wire y;
 mux_2_1 DUT(a, b, s0, y);
 initial
 begin
    $dumpfile("mux_2_1_tb.vcd");
    $dumpvars(0, mux_2_1_tb);
 end
 initial
 begin
    $display("mux_2_1");
    $monitor("a = %b, b = %b, s0 = %b, y = %b", a, b, s0, y);
    a = 0; b = 0; s0 = 0; #5;
    a = 0; b = 0; s0 = 1; #5;
    a = 0; b = 1; s0 = 0; #5;
    a = 0; b = 1; s0 = 1; #5;
    a = 1; b = 0; s0 = 0; #5;
    a = 1; b = 0; s0 = 1; #5;
    a = 1; b = 1; s0 = 0; #5;
    a = 1; b = 1; s0 = 1; #5;
 end
endmodule