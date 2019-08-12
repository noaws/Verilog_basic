`resetall
`timescale 1ns/1ns

module seg7_tb;
    reg [3:0] bcd;
    wire [1:7] leds;

    seg7 s1(bcd, leds);
    initial
    begin
      bcd = 0;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
      #10 bcd = bcd + 1;
    end

endmodule