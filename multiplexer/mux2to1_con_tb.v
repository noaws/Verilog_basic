`resetall
`timescale 1ns/1ns

module mux2to1_con_tb;

    reg w0, w1, s;
    wire f;

    mux2to1_con m1(w0, w1, s, f);
    initial
    begin
      w0 = 1'b1; w1 = 1'b0; s = 1'b0;

      #10 s = ~s;
      #20 $finish;

    end

endmodule