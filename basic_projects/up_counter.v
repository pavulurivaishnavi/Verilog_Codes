module up_counter(clk, reset, enable, count);
 input clk, reset, enable;
 output reg [3:0] count;
 always@(posedge clk)
 begin
    if(reset)
        count <= 4'b0000;
    else if(enable)
        count <= count + 1;
    else if (enable == 1'b0)
        count <= count;
 end
endmodule