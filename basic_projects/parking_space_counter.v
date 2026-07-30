module parking_space_counter(clk, reset, car_enter, car_exit, car_count, full, empty);
 input clk, reset, car_enter, car_exit;
 output reg[3:0] car_count;
 output full, empty;
 assign full = (car_count == 4'd15);
 assign empty = (car_count == 4'd0);
 always@(posedge clk)
 begin
    if(reset)
        car_count <= 4'b0000;
    else if(car_enter) begin
        if (car_count < 4'b1111)
            car_count <= car_count + 1'b1;
    end
    else if(car_exit) begin
        if(car_count > 4'b0000)
            car_count <= car_count - 1'b1;
    end
 end
endmodule
