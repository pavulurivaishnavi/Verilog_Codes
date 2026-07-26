module router_tb;
 reg [3:0]in;
 reg [1:0]sel_mux, sel_demux;
 wire [3:0]out;
 router DUT(in, sel_mux, sel_demux, out);
 initial
 begin
    $dumpfile("router_tb.vcd");
    $dumpvars(0, router_tb);
 end
 initial
 begin
    $display("4_bit digital data router simulation");
    $monitor("in = %b, sel_mux = %b, sel_demux = %b, out = %b", in, sel_mux, sel_demux, out);
    in = 4'b0101; sel_mux = 2'b00; sel_demux = 2'b10; #10;
    in = 4'b1001; sel_mux = 2'b10; sel_demux = 2'b11; #10;
    $finish;
 end
endmodule
