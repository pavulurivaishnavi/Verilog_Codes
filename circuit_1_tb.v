module circuit_1_tb;
 reg [1:0]A, B;
 wire Z;
 circuit_1 DUT(A, B, Z);
 initial
 begin
    $dumpfile("circuit_1_tb.vcd");
    $dumpvars(0, circuit_1_tb);
 end
 initial
 begin
    $display("circuit_1 simulation:");
    $monitor("A = %b, B = %b, Z = %b", A, B, Z);
    A = 2'b00; B = 2'b00; #10;
    A = 2'b00; B = 2'b01; #10;
    A = 2'b00; B = 2'b10; #10;
    A = 2'b00; B = 2'b11; #10;
    A = 2'b01; B = 2'b00; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b01; B = 2'b11; #10;
    A = 2'b10; B = 2'b00; #10;
    A = 2'b10; B = 2'b01; #10;
    A = 2'b10; B = 2'b10; #10;
    A = 2'b10; B = 2'b11; #10;
    A = 2'b11; B = 2'b11; #10;
    $finish;
 end
endmodule