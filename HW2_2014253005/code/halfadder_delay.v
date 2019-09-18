module halfadder (sum, cout, a, b);
  input a, b;
  output cout, sum;

  xor #3 (sum, a, b);
  and #2 (cout, a, b);
endmodule
