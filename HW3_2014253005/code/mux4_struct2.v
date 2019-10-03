module mux4_struct(y, data0, data1, data2, data3, select0, select1);
  output y;
  input data0, data1, data2, data3;
  input select0, select1;
  wire w1, w2;

  mux2_nbit u1(w1, data0, data1, select1);
  mux2_nbit u2(w2, data2, data3, select0 & select1);
  mux2_nbit u3(y, w1, w2, select0);
endmodule
