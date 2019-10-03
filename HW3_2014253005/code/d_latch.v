module d_latch(enable, din, qout);
  input enable, din;
  output qout;

  assign qout = enable ? din : qout;
endmodule

