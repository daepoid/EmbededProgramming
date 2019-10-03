module d_latch_reset(q, enable, data, reset);
  output q;
  input enable, data, reset;
  reg q;

  always @(enable or data or reset) begin
    if(!reset) q = 0;
    else if(enable) q = data;
  end
endmodule

