module Test_Add_rippple();
  wire c4;
  wire [3:0]s;
  reg [3:0]a, b;
  reg c0;

  add_rca4 u1(c4, s, a, b, c0);

  initial begin
    #100
    $finish;
  end

  initial begin
    a[0] = 0; a[1] = 0; a[2] = 0; a[3] = 0;
    b[0] = 0; b[1] = 0; b[2] = 0; b[3] = 0;
    c0 = 0;
    #10 b[0] = 1;
    // c0 = 0, b[1] = 0, b[0] = 1
    #10 b[1] = 1;
    // c0 = 0, b[1] = 1, b[0] = 1
    #10 b[0] = 0;
    // c0 = 0, b[1] = 1, b[0] = 0

    #10 c0 = 1;
    #10 b[1] = 0;
    // c0 = 1, b[1] = 0, b[0] = 1
    #10 b[1] = 1;
    // c0 = 1, b[1] = 1, b[1] = 1
    #10 b[0] = 0;
    // c0 = 1, b[1] = 1, b[0] = 0
  end
endmodule


