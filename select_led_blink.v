module select_led_blink(clk, reset, sel, out);
 input clk, reset;
 input [1:0]sel;
 output reg out;
 reg [3:0]count;
 always@(posedge clk)
 begin
   if(reset)
       count <= 4'b0000;
   else
       count <= count + 1;
 end
 always@(*)
 begin
    case(sel)
           2'b00 : out = count[3];
           2'b01 : out = count[2];
           2'b10 : out = count[1];
           2'b11 : out = count[0];
           default : out = 1'b0;
    endcase
 end
endmodule
   