module programmable_fd_tb;
 reg clk, reset;
 reg [1:0]sel;
 wire clk_out;
 programmable_fd DUT(clk, reset, sel, clk_out);
 initial
 begin
    clk = 0;
    forever #5 clk = ~clk;
 end
 initial
 begin
    $dumpfile("programmable_fd_tb.vcd");
    $dumpvars(0, programmable_fd_tb);
 end

 initial
 begin
    $display("frequency divider by 2 simulation");
    $monitor("time = %0t, clk = %b, reset = %b, sel = %b, clk_out = %b", $time, clk, reset, sel, clk_out);
    reset = 1'b0; sel = 2'b00; #5;
    reset = 1'b1; sel = 2'b00; #10;
    reset = 1'b0; sel = 2'b00; #10;
    reset = 1'b0; sel = 2'b00; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b01; #10;
    reset = 1'b0; sel = 2'b01; #5;
    $finish;
 end
endmodule