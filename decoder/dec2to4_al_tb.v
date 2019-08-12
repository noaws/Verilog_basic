`resetall
`timescale 1ns/1ns
`parameter CLOCK_PERIOD 10

module dec2to4_al_tb;
    reg [1:0] W;
    reg En;
    wire [0:3] Y;

    dec2to4_al d1(W, Y, En);
    initial
    begin
      En = 1'b0; W = 2'b00;
      #(CLOCK_PERIOD) En = 1'b1;
      #(CLOCK_PERIOD) W = 2'b01;
      #(CLOCK_PERIOD) W = 2'b10;
      #(CLOCK_PERIOD) W = 2'b11;
      #(CLOCK_PERIOD) $finish;
    end
endmodule