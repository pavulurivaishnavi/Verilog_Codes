module universal_shift_register(in, clk, reset, sel, out);
 input [3:0]in;
 input [1:0]sel;
 input clk, reset;
 output reg [3:0]out;
 always@(posedge clk)
 begin
    if(reset)
        out = 4'b0000;
    else
        case(sel)
            2'b00 : out <= out;
            2'b01 : out <= out >> 1;
            2'b10 : out <= out << 1;
            2'b11 : out <= in;
            default: out <= out;
        endcase
 end
endmodule