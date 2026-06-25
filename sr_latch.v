module sr_latch(r, s, q, qbar);
 input r, s;
 output q, qbar;
 nand N1 (q, s, qbar);
 nand N2 (qbar, r, q);
endmodule