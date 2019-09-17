module fulladder(sum, cout, a, b, cin);
  output sum, cout;
  input a, b, cin;
  wire w1, w2, w3;

  halfadder u1(w1, w2, a, b);
  halfadder u2(sum, w3, cin, w1);
  or u3(cout, w2, w3);
endmodule
