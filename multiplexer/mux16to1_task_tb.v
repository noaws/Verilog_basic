`resetall
`timescale 1ns/1ns

module mux16to1_task_tb;
    reg [0:15] W;
    reg [3:0] S16;
    wire f;

    mux16to1_task m1(W, S16, f);
    initial
    begin
      W = 16'b0101010101010101; S16 = 4'b0000;

      #10 S16 = 4'b0001;
      #10 S16 = 4'b0010;
      #10 S16 = 4'b0011;
      #10 S16 = 4'b0100;
      #10 S16 = 4'b0101;
      #10 S16 = 4'b0110;
      #10 S16 = 4'b0111;
      #10 S16 = 4'b1000;
      #10 S16 = 4'b1001;
      #10 S16 = 4'b1010;
      #10 S16 = 4'b1011;
      #10 S16 = 4'b1100;
      #10 S16 = 4'b1101;
      #10 S16 = 4'b1110;
      #10 S16 = 4'b1111;
    end

endmodule