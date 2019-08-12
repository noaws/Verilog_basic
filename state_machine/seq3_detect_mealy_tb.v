`resetall
`timescale 1ns/1ns

module seq3_detect_mealy_tb;
    reg x, clk;
    wire y;

    seq3_detect_mealy sm2(x, clk, y);
    initial
    begin
      clk = 0; x = 1;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk; x = ~x;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk; x = ~x;
    end

endmodule 
