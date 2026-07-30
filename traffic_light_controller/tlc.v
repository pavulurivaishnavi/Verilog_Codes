module tlc(clk, reset, ns_green, ns_red, ns_yellow, ew_green, ew_red, ew_yellow);
 input clk, reset;
 output reg ns_green, ns_red, ns_yellow, ew_green, ew_red, ew_yellow;
 reg[1:0]q;
 always@(posedge clk)
 begin
    if(reset)
        q <= 2'b00;
    else begin
        q <= q + 1'b1;
 end
 end
 always@(*) begin
        ns_green  = 1'b0;
        ns_yellow = 1'b0;
        ns_red    = 1'b1;

        ew_green  = 1'b0;
        ew_yellow = 1'b0;
        ew_red    = 1'b1;

 case(q)
    2'b00 : begin ns_green = 1'b1;
            ns_red = 1'b0;
    end
    2'b01 : begin ns_yellow = 1'b1;
            ns_red = 1'b0;
    end
    2'b10 : begin
            ew_red = 1'b0;
            ew_green = 1'b1;
    end
    2'b11 : begin ew_yellow = 1'b1;
            ew_red = 1'b0;
    end
 endcase
 end
endmodule
