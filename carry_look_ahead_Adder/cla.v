module cla(A, B, Cin, Sum, Cout);
 input [3:0]A, B;
 input Cin;
 output [3:0] Sum;
 output Cout;
 reg [3:0]g, p;
 reg [4:0]c;
 integer i;
 always@(*)
 begin
    c[0] = Cin;
    for(i = 0; i<4; i = i + 1) begin
        g[i] = A[i] & B[i];
        p[i] = A[i] ^ B[i];
        c[i+1] = g[i] | (p[i] & c[i]);
    end
 end
 assign Sum = p ^ c[3:0];
 assign Cout = c[4];
endmodule
