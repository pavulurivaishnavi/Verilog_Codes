module priority_controller_tb;
 reg [3:0]in;
 wire [3:0]out;
 priority_controller DUT(in, out);
 initial begin
    $dumpfile("priority_controller_tb.vcd");
    $dumpvars(0, priority_controller_tb);
 end
 initial
 begin
    $display("4 device priority request controller");
    $monitor("in = %b, out = %b", in, out);
    in = 4'b1010; #10;
    in = 4'b0000; #10;
    in = 4'b0100; 
    $finish;
 end
endmodule