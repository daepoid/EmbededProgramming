module mux4_shift_blocking(A, B, C, in, CLK, sel);
  output A, B, C;
  input in, CLK;
  input[1:0] sel;

  reg A, B, C, y;
  
  always @(y or in or A or B or C or sel) begin
    case(sel)
      0: y = in;
      1: y = A;
      2: y = B;
      3: y = C;
      default: y = 1'bx;
    endcase
  end

  always @(posedge CLK) begin
    A = B;
    B = C;
    C = y;
  end
endmodule



