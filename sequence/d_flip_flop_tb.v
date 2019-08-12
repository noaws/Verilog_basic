`resetall
`timescale 1ns/1ns

module d_flip_flop_tb;
    reg　D, Clk;
    wire Q;

    d_flip_flop d2(D, Clk, Q);
    initial
    begin
      Clk = 0; D = 0;
      #10 Clk = ~Clk;
      #10 Clk = ~Clk; D = ~D;
      #10 Clk = ~Clk;
      #10 Clk = ~Clk; D = ~D;
      #10 Clk = ~Clk;
      #10 Clk = ~Clk; D = ~D;
      #10 Clk = ~Clk;
      #10 Clk = ~Clk; D = ~D;
    end

endmodule