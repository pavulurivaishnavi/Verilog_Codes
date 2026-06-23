module binary_adder_tb;
reg [2:0]a, b;
reg cin;
wire [2:0]sum, cout;
binary_adder DUT(a, b, cin, sum, cout);
initial
begin
    $dumpfile("binary_adder_tb.vcd");
    $dumpvars(0, binary_adder_tb);
end
initial
begin
    $display("binary adder simulation using 3 full adders");
    $monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    a = 3'b000; b = 3'b000; cin = 0; #5;
    a = 3'b000; b = 3'b000; cin = 1; #5;
    a = 3'b000; b = 3'b001; cin = 0; #5;
    a = 3'b000; b = 3'b001; cin = 1; #5;
    a = 3'b000; b = 3'b010; cin = 0; #5;
    a = 3'b000; b = 3'b010; cin = 1; #5;
    a = 3'b000; b = 3'b011; cin = 0; #5;
    a = 3'b000; b = 3'b011; cin = 1; #5;
    a = 3'b001; b = 3'b001; cin = 0; #5;
    a = 3'b001; b = 3'b001; cin = 1; #5;
    a = 3'b100; b = 3'b010; cin = 0; #5;
    a = 3'b100; b = 3'b010; cin = 1; #5;
end
endmodule