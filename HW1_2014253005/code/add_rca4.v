module add_rca4(c4, s, a, b, c0);
  input [3:0]a, b;
  input c0;
  output [3:0]s;
  output c4;
  wire [3:1]c;

  fulladder u1(s[0], c[1], a[0], b[0], c0);
  fulladder u2(s[1], c[2], a[1], b[1], c[1]);
  fulladder u3(s[2], c[3], a[2], b[2], c[2]);
  fulladder u4(s[3], c4, a[3], b[3], c[3]);
endmodule
