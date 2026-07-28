module fd_by_four(clk, reset, clk_out);
 input clk, reset;
 output reg clk_out;
 reg q;
 always@(posedge clk or posedge reset)
 begin
    if(reset)
        q = 1'b0;
    else
        q = ~q;
 end
 always@(posedge q or posedge reset)
 begin
    if(reset)
        clk_out = 1'b0;
    else
        clk_out = ~clk_out;
 end
endmodule
