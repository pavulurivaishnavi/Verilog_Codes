module bcd_adder(a, b, cin, cout, sum);
 input [3:0]a, b;
 input cin;
 output [3:0]sum;
 output cout;
 wire [4:0]temp_sum, correct_sum;
 assign temp_sum = a + b + cin;
 assign correct_sum = (temp_sum > 5'd9) ? (temp_sum + 5'd6) : (temp_sum);
 assign sum = correct_sum[3:0];
 assign cout = correct_sum[4];
endmodule