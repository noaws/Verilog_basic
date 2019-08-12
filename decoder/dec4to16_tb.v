`resetall
`timescale 1ns/1ns

module dec4to16_tb;
    reg [3:0] W;
    reg En;
    wire [0:15] Y;

    dec4to16 d1(W, Y, En);
    initial
    begin
      En = 1'b0; W = 0;
      #10 En = 1'b1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #10 W = W + 1;
      #20 $finish;
    end
endmodule