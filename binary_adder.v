module binary_adder(a, b, cin, sum, cout);
 input [2:0]a,b;
 input cin;
 output [2:0]cout;
 output[2:0]sum;
 full_adder F1(.a(a[0]), .b(b[0]), .cin(cin), .s(sum[0]), .cout(cout[0]));
 full_adder F2(.a(a[1]), .b(b[1]), .cin(cout[0]), .s(sum[1]), .cout(cout[1]));
 full_adder F3(.a(a[2]), .b(b[2]), .cin(cout[1]), .s(sum[2]), .cout(cout[2]));
endmodule