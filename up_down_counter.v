module up_down_counter(clk, reset, c_up, c_down, out);
 input clk, reset, c_up, c_down;
 output reg[3:0]out;
 always@(posedge clk)
 begin
    if(reset)
        out <= 4'b0000;
    else if(c_up)
        out <= out + 1;
    else if (c_down)
        out <= out - 1;
    else
        out <= out;
 end
endmodule
