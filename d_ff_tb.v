module d_ff_tb;
reg clk, d;
wire q, qbar;
d_ff DUT(clk, d, q, qbar);
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial
begin
    $dumpfile("d_ff_tb.vcd");
    $dumpvars(0, d_ff_tb);
end
initial
begin
    $display("d_ff simulation:");
    $monitor("time =%0t, clk = %b, d = %b, q = %b, qbar = %b", $time, clk, d, q, qbar);
    d = 0; #8;
    d = 1; #4;
    d = 0; #10;
    d = 1; #10;
    $finish;
end
endmodule

