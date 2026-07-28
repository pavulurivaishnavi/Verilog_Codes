module frequency_divider(clk, reset, clk_out);
 input clk, reset;
 output reg clk_out;
 always@(posedge clk)
 begin
    if(reset)
        clk_out <= 1'b0;
    else
        clk_out <= ~clk_out;
 end
endmodule 