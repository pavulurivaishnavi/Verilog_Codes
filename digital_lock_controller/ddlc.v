module ddlc(in, clk, reset, unlock, error);
 input in, clk, reset;
 output reg unlock, error;
 reg [1:0] current_state, next_state;
 localparam [1:0] s0 = 2'b00;
 localparam [1:0] s1 = 2'b01;
 localparam [1:0] s2 = 2'b10;
 localparam [1:0] s3 = 2'b11;
 always@(posedge clk)
 begin
    if(reset)
        current_state <= s0;
    else
        current_state <= next_state;
 end
 always@(*)
 begin
    next_state = current_state;
    unlock = 1'b0;
    error = 1'b0;
    case(current_state)
        s0 : begin
                if(in == 1'b1)
                    next_state = s1;
                else begin
                        error = 1'b1;
                        next_state = s0;
                end
        end
        s1 : begin
                if(in == 1'b1) begin
                    error = 1'b1;
                    next_state = s1;
                end
                else
                    next_state = s2;
        end
        s2 : begin
                if(in == 1'b1)
                    next_state = s3;
                else begin
                    error = 1'b1;
                    next_state = s0;
                end
        end
        s3 : begin
                if(in == 1) begin
                    unlock = 1'b1;
                    next_state = s0;
                end
                else begin
                        error = 1'b1;
                        next_state = s2;
                end
        end
        default : next_state = s0;
    endcase
 end
endmodule
