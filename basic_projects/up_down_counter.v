module up_down_counter(clk, reset, up_down, count);
 input clk, reset, up_down;
 output reg [3:0] count;
 always@(posedge clk)
 begin
    if(reset)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1'b1;
    else if (up_down == 1'b0)
        count <= count - 1'b1;
 end
endmodule