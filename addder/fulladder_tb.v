`resetall
`timescale 1ns/1ns

module fulladder_tb;
    reg [3:0] A, B;
    reg cin;
    wire [3:0] S;
    wire cout;

    adder4 aaa(A, B , cin, S, cout);
    initial
    begin
      cin = 0; A = 4'b0001; B = 4'b1010;
    end
endmodule