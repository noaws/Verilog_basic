`resetall
`timescale 1ns/1ns

module dff_blocking_tb;
    reg D, Clock;
    wire Q1, Q2;

    dff_blocking d3(D, Clock, Q1, Q2);
    initial
    begin
      Clock = 0; D = 0;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
    end
endmodule