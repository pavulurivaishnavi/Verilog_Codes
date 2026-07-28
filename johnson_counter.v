module johnson_counter(clk, reset, out);
 input clk, reset;
 output reg [3:0]out;
 always@(posedge clk)
 begin
    if(reset)
        out <= 4'b0000;
    else
        out <= {(~out[0]), out[3:1]};
 end
endmodule