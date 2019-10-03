module cmp2_CA1(lt, gt, eq, A, B);
  input [1:0]A, B;
  output lt, gt, eq;

  assign lt = A < B;
  assign gt = A > B;
  assign eq = A == B;
endmodule

