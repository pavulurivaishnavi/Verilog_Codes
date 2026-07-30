module stop_watch(clk, reset, run, seconds);
 input clk, reset, run;
 output reg [5:0]seconds;
 always@(posedge clk)
 begin
    if(reset)
        seconds <= 6'b000000;
    else if(run)
        if(seconds == 6'd59)
            seconds <= 6'b000000;
        else 
            seconds <= seconds + 1;
 end
endmodule