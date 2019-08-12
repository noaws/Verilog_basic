`resetall
`timescale 1ns/1ns

module mag_comp_tb;
    reg [3:0] A, B;
    wire ALTB, AGTB, AEQB;

    mag_comp m1(A, B, ALTB, AGTB, AEQB);
    initial
    begin
      A = 0; B = 0;
      #10 A = 4; B = 4;
      #10 A = 2;
      #10 B = 1;
    end

endmodule