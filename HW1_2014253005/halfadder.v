module halfadder (sum, cout, a, b);
  input a, b;
  output cout, sum;

  xor(sum, a, b);
  and(cout, a, b);
endmodule
