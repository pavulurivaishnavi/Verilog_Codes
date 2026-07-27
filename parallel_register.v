module parallel_register(in, clk, reset, load, out);
 input [3:0]in;
 input clk;
 input reset;
 input load;
 output reg [3:0]out;
 always@(posedge clk)
 begin
    out = 4'b1001;
    if(reset)
        out = 4'b0000;
    else if (load)
        out = in[3:0];
    else
        out = out;
 end
endmodule
