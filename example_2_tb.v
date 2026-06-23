module example_2_tb;
 reg [2:0]vec;
 wire [2:0]outvec;
 wire o2, o1, o0;
 example_2 DUT(vec, outvec, o2, o1, o0);
 initial 
 begin
    $dumpfile("example_2_tb.vcd");
    $dumpvars(0, example_2_tb);
 end
 initial
 begin
    $display("example_2 simulation:");
    $monitor("vec = %b, outvec = %b, o2 = %b, o1 = %b, o0 = %b", vec, outvec, o2, o1, o0);
    vec = 3'b000; #10;
    vec = 3'b001; #10;
    vec = 3'b010; #10;
    vec = 3'b011; #10;
    vec = 3'b100; #10;
    vec = 3'b101; #10;
    vec = 3'b110; #10;
    vec = 3'b111; #10;
    $finish;
 end
endmodule