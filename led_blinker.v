module led_blinker(clk, reset, out);
 input clk, reset;
 output reg out;
 reg [2:0]count;
 always@(posedge clk)
 begin
    if(reset) begin
        count <= 3'b000;
        out <= 1'b0;
    end
    else if (count == 3'd4) begin
        count <= 3'b000;
        out <= ~out;
    end
    else begin
        count <= count + 1;
    end
 end
endmodule
