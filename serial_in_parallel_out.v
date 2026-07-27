module serial_in_parallel_out(in, clk, reset, out);
 input in, clk, reset;
 output reg[3:0]out;
 always@(posedge clk)
 begin
    if(reset)
        out <= 4'b0000;
    else
        out <= {in, out[3:1]};
 end
endmodule