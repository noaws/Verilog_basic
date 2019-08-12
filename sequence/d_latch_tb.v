`resetall
`timescale 1ns/1ns

module d_latch_tb;
    reg D, Clk;
    wire Q;

    d_latch d1(D, Clk, Q);
    initial
    begin
      Clk = 0; D =0;
      #10 Clk = 1; D = ~D;
      #10 D = ~D;
      #10 D = ~D;
      #10 D = ~D;
      #10 D = ~D;
      #10 D = ~D;
    end
endmodule
