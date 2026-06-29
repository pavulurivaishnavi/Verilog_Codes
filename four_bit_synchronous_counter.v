module four_bit_synchronous_counter(clk, clear, count_enable, Q, Qbar);
 input clk, clear, count_enable;
 output reg [3:0]Q;
 output [3:0]Qbar;
 assign Qbar = ~Q;
 always @(negedge clk or negedge clear)
 begin
    if(!clear)
        Q <= 4'b000;
    else if(count_enable)
        Q <= Q + 1;
    else
        Q <= Q;
 end
endmodule