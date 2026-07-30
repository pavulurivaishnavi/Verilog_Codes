/* this works perfect but this is not what a practical elevator looks like. s0 is floor 1 and s1 is floor 2 so which state 
represents whne the elevator is moving up and down i.e in between the floors so better use s0 - floor 1 , s1 - moving up ,
s2 - floor 2, s3 - moving down ward*/

module elevator_controller(clk, reset, floor1_request, floor2_request, motor_up, motor_down, door_open);
 input clk, reset, floor1_request, floor2_request;
 output reg motor_up, motor_down, door_open;
 reg current_state, next_state;
 localparam s0 = 1'b0;
 localparam s1 = 1'b1;
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
    motor_up = 1'b0;
    motor_down = 1'b0;
    door_open = 1'b1;
    case(current_state)
        s0 : if(floor1_request) begin
                next_state = s0;
        end
             else if(floor2_request) begin
                door_open = 1'b0;
                motor_up = 1'b1;
                next_state = s1;
             end
        s1 : if(floor1_request) begin
                door_open = 1'b0;
                motor_down = 1'b1;
                next_state = s0;
        end
             else if(floor2_request) begin
                next_state = s1;
             end
    endcase
 end
endmodule


