`resetall
`timescale 1ns/1ns

module mux4to1_con_tb;

    reg w0, w1, w2, w3;
    reg [1:0] S;
    wire f;

    mux4to1_con m1(w0, w1, w2, w3, S,f);
    initial
    begin
      w0 = 1'b0; w1 = 1'b1; w2 = 1'b0; w3 = 1'b0; S = 2'b00;

      #10 S = 2'b01;
      #10 S = 2'b10;
      #10 S = 2'b11;
      #20 $finish;
    end

endmodule