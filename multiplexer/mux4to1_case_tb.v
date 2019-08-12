`resetall
`timescale 1ns/1ns

module mux4to1_case_tb;

    reg [0:3] W;
    reg [1:0] S;
    wire f;

    mux4to1_case m1(W, S,f);
    initial
    begin
      W = 4'b1001; S = 2'b00;

      #10 S = 2'b01;
      #10 S = 2'b10;
      #10 S = 2'b11;
      #20 $finish;
    end

endmodule