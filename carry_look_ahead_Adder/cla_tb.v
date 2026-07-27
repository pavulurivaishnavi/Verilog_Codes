module cla_tb;
 reg [3:0]A, B;
 reg Cin;
 wire [3:0]Sum;
 wire Cout;
 cla DUT(A, B, Cin, Sum, Cout);
 initial
 begin
    $dumpfile("cla_tb.vcd");
    $dumpvars(0, cla_tb);
 end
 initial
 begin
    $display("carry look ahead adder");
    $monitor("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
    A = 4'B0011; B =4'b1001; Cin = 1'b1; #10;
    A = 4'b1110; B =4'b1000; Cin = 1'b0; #10;
    $finish;
 end
endmodule