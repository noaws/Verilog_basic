`resetall
`timescale 1ns/1ns

module seq3_detect_moore_tb;
    reg x, clk;
    wire y;

    seq3_detect_moore sm(x, clk, y);
    initial
    begin
      clk = 0; x = 0;
      #10 clk = ~clk; x = 1;
      #10 clk = ~clk; 
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;
      #10 clk = ~clk;

    end

endmodule 
