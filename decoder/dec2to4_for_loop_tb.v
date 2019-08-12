`resetall
`timescale 1ns/1ns

module dec2to4_for_loop_tb;
    reg [1:0] W;
    reg En;
    wire [0:3] Y;

    dec2to4_for_loop d1(W, Y, En);
    initial
    begin
      En = 1'b0; W = 2'b00;
      #10 En = 1'b1;
      #10 W = 2'b01;
      #10 W = 2'b10;
      #10 W = 2'b11;
      #20 $finish;
    end

endmodule