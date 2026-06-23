module mux_4_1_tb;
 reg a, b, c, d, s0, s1;
 wire y;
 wire y1, y2;
 mux_4_1 DUT(a, b, c, d, s0, s1, y);
 initial
 begin
    $dumpfile("mux_4_1_tb.vcd");
    $dumpvars(0, mux_4_1_tb);
 end
 initial
 begin
    $display("mux_4_1 using mux_2_1");
    $monitor("a = %b, b = %b, c = %b, d = %b, s0 = %b, s1 = %b, y = %b", a, b, c, d, s0, s1, y);
    a = 0; b = 0; c = 0; d = 0; s0 = 0; s1 = 0; #10;
    a = 0; b = 0; c = 0; d = 0; s0 = 0; s1 = 1; #10;
    a = 0; b = 0; c = 0; d = 0; s0 = 1; s1 = 0; #10;
    a = 0; b = 0; c = 0; d = 0; s0 = 1; s1 = 1; #10;
    a = 0; b = 0; c = 0; d = 1; s0 = 0; s1 = 0; #10;
    a = 0; b = 0; c = 0; d = 1; s0 = 0; s1 = 1; #10;
    a = 0; b = 0; c = 0; d = 1; s0 = 1; s1 = 0; #10;
    a = 0; b = 0; c = 0; d = 1; s0 = 1; s1 = 1; #10;
    a = 0; b = 0; c = 1; d = 0; s0 = 0; s1 = 0; #10;
    a = 0; b = 0; c = 1; d = 0; s0 = 0; s1 = 1; #10;
    a = 0; b = 0; c = 1; d = 0; s0 = 1; s1 = 0; #10;
    a = 0; b = 0; c = 1; d = 0; s0 = 1; s1 = 1; #10;
    a = 0; b = 0; c = 1; d = 1; s0 = 0; s1 = 0; #10;
    a = 0; b = 0; c = 1; d = 1; s0 = 0; s1 = 1; #10;
    a = 0; b = 0; c = 1; d = 1; s0 = 1; s1 = 0; #10;
    a = 0; b = 0; c = 1; d = 1; s0 = 1; s1 = 1; #10;
 end
endmodule
