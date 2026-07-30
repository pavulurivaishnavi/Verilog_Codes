module vm(clk, reset, coin_5, coin_10, dispense, change_5);
 input clk, reset, coin_5, coin_10;
 output reg dispense, change_5;
 reg [1:0]current_state, next_state;
 localparam [1:0]s0 = 2'b00;
 localparam [1:0]s1 = 2'b01;
 localparam [1:0]s2 = 2'b10;
 always@(posedge clk)
 begin
    if(reset)
        current_state <= s0;
    else
        current_state <= next_state;
 end
 always@(*) begin
    next_state = current_state;
    dispense = 1'b0;
    change_5 = 1'b0;
    case(current_state)
        s0 : begin
                if(coin_5)
                    next_state = s1;
                else if (coin_10)
                    next_state = s2;
        end
        s1 : begin
                if(coin_5)
                    next_state = s2;
                else if(coin_10) begin
                    dispense = 1'b1;
                    next_state = s0;
                end
        end
        s2 : begin
                if(coin_5) begin
                    dispense = 1'b1;
                    next_state = s0;
                end
                else if(coin_10) begin
                    dispense = 1'b1;
                    change_5 = 1'b1;
                    next_state = s0;
                end
        end
        default : next_state = s0;
    endcase
 end
endmodule