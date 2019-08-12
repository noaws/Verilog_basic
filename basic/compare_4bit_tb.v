`resetall
`timescale 1ns/1ns

module compare_4bit_tb;
    reg [3:0] A, B;
    wire AeqB, AgtB, AltB;

    compare_4bit c1(A, B, AeqB, AgtB, AltB);
    initial
    begin
      A = 0; B = 0;
      #10 A = 4; B = 4;
      #10 A = 2;
      #10 B = 1;
    end

endmodule