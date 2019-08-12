`resetall
`timescale 1ns/1ns

module addern_tb;
    parameter n = 32;
    reg carryin;
    reg [n-1:0] X, Y;
    wire [n-1:0] S;
    wire carryout;

    addern a1(carryin, X, Y, carryout);
    initial
    begin
      carryin = 0; X = 32; Y = 23;
      #10 X = 67; Y =78;
    end
endmodule