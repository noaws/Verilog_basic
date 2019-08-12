`resetall
`timescale 1ns/1ns

module dff_reset_tb;
    reg D, Clock, Resetn;
    wire Q;

    dff_reset d3(D, Clock, Resetn, Q);
    initial
    begin
      Clock = 0; D = 0; Resetn = 1;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Resetn = 0; Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; D = ~D;
    end
endmodule