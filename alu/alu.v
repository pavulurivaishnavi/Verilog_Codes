module alu(a, b, sel, out, carry, borrow);
 input [3:0] a, b;
 input [2:0] sel;
 output reg [3:0] out;
 output reg carry;
 output reg borrow;
 always@(*) begin
  out = 4'b0000;
  carry = 1'b0;
  borrow = 1'b0;
    if (sel == 3'b000)
        {carry, out} = {1'b0, a} + {1'b0, b};
    else if (sel == 3'b001) begin
        out = a - b;
        borrow = (a < b);
    end
    else if (sel == 3'b010)
        out = a & b;
    else if (sel == 3'b011)
        out = a | b;
    else if (sel == 3'b100)
        out = a ^ b;
    else if (sel == 3'b101)
        out = ~a;
    else if (sel == 3'b110)
        out = a << 2;
    else if (sel == 3'b111)
        out = (a > b) ? 4'b0001 : 4'b0000;
 end
endmodule
        

        
