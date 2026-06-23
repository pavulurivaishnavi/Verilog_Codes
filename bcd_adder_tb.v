module bcd_adder_tb;
 reg [3:0]a, b;
 reg cin;
 wire [3:0]sum;
 wire cout;
 bcd_adder DUT(a, b, cin, cout, sum);
 initial
 begin
    $dumpfile("bcd_adder_tb.vcd");
    $dumpvars(0, bcd_adder_tb);
 end
 initial
 begin
    $display("bcd_adder simulation:");
    $monitor("a = %b, b = %b, cin = %b, cout = %b, sum = %b", a, b, cin, cout, sum);
    a = 4'b1000; b = 4'b1000; cin = 0; #10;
    $finish;
 end
endmodule