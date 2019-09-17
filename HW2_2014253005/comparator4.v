module comparator4(eq, lt, gt, A, B);
  output gt, lt, eq;
  input [3:0]A, B;
  wire w1, w0, gt1, lt1, eq1, gt2, lt2, eq2;

  comparator2 u1(eq1, lt1, gt1, A[3:2], B[3:2]);
  comparator2 u2(eq0, lt0, gt0, A[1:0], B[1:0]);
  combine u3(eq, lt, gt, eq0, lt0, gt0, eq1, lt1, gt1);
endmodule
