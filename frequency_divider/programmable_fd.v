module programmable_fd(clk, reset, sel, clk_out);
 input clk, reset;
 input [1:0]sel;
 output reg clk_out;
 reg [3:0]count;
 always@(posedge clk)
 begin
    if(reset)
        count = 4'b0000;
    else
        count = count + 1;
 end
 always@(*)
 begin
    case(sel)
        2'b00 : clk_out <= count[0];
        2'b01 : clk_out <= count[1];
        2'b10 : clk_out <= count[2];
        2'b11 : clk_out <= count[3];
        default : clk_out <= clk_out;
    endcase
 end
endmodule

