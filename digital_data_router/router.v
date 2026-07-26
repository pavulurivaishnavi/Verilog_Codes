module router(in, sel_mux, sel_demux, out);
 input [3:0]in;
 input [1:0]sel_mux, sel_demux;
 output [3:0]out;
 wire out_mux;
 assign out_mux = in[sel_mux];
 assign out = out_mux?(4'b0001<<sel_demux):4'b0000;
endmodule