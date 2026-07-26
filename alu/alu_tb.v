module alu_tb;
 reg [3:0] a, b;
 reg [2:0] sel;
 wire [3:0] out;
 wire carry, borrow;
 alu DUT(a, b, sel, out, carry, borrow);
 initial
 begin
    $dumpfile("alu_tb.vcd");
    $dumpvars(0, alu_tb);
 end
 initial
 begin
    $display("simulation of alu");
    $monitor("a = %b, b = %b, sel = %b, out = %b, carry = %b, borrow = %b", a, b, sel, out, carry, borrow);
    a = 4'b0101; b = 4'b1011; sel = 3'b000; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b001; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b010; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b011; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b100; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b101; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b110; #10
    a = 4'b0101; b = 4'b1011; sel = 3'b111; #10
    $finish;
 end
endmodule




