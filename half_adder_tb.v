module half_adder_tb;
 reg a, b;
 wire s, cout;
 half_adder DUT(a, b, s, cout);
 initial
 begin
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0, half_adder_tb);
 end
 initial
 begin
    $display("half_adder_simulation:");
    $monitor("a = %b, b = %b, s = %b, cout = %b", a, b, s, cout);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
 end
endmodule

