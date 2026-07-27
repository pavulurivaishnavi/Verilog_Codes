module priority_controller(in, out);
 input [3:0]in;
 output [3:0]out;
 wire [1:0]out_p;
 wire valid;
 priority_encoder P1(.in(in), .out(out_p), .valid(valid));
 decoder D1(.in(out_p), .valid(valid), .out(out));
endmodule
 