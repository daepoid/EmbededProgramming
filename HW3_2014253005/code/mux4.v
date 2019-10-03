module mux4(y, data0, data1, data2, data3, select0, select1);
  output y;
  input data0, data1, data2, data3;
  input select0, select1;

  assign y = ~select0 & ~select1 & data0 | ~select0 & select1 & data1 | select0 & ~select1 & data2 | select0 & select1 & data3;
endmodule
