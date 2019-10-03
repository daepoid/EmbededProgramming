module d_latch(q, enable, data);
  output q;
  input enable, data;
  reg q;

  always @(enable or data) begin
    if(enable) q = data;
  end
endmodule
