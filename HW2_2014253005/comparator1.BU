module comparator1(eq, lt, gt, a, b);
  input a, b;
  output eq, lt, gt;

  assign lt = ~a & b; // lt = a'b
  assign gt = a & ~b; // gt = ab'
  assign eq = a & b | ~a & ~b; // eq = ab + a'b'
endmodule
