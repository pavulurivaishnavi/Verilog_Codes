module parallel_in_serial_out(in, clk, reset, load, out);
 input [3:0]in;
 input clk, reset, load;
 output out;
 reg [3:0]shift_reg;
 assign out = shift_reg[0];
 always@(posedge clk)
 begin
    if(reset)
        shift_reg <= 4'b0000;
    else if(load)
        shift_reg <= in;
    else
        shift_reg <= {1'b0, in[3:1]};
 end
endmodule