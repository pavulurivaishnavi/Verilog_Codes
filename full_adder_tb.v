module full_adder_tb;
 reg a, b, cin;
 wire s, cout;
 full_adder DUT(a, b, cin, s, cout);
 initial
 begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0,full_adder_tb);
 end
 initial
 begin
    $display("full_adder_simulation");
    $monitor("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
 end
endmodule