`resetall
`timescale 1ns/1ns
`parameter CLOCK_HALF_PERIOD = 10;


module mealy_fsm_tb;
    reg Clock, Resetn, w;
    wire z;
    
    mealy_fsm me(Clock, Resetn, w, z);
    me.state = 0;
    initial
    begin
      Clock = 0; Resetn = 1; w = 0;
      forever #CLOCK_HALF_PERIOD Clock = ~Clock;
      @(negedge Clock); w = 1;
      @(negedge Clock);
      @(negedge Clock); w = 0;
      @(negedge Clock); w = 0;
      @(negedge Clock); w = 1;
      @(negedge Clock);
      @(negedge Clock); w = 0;
      #20 $finish;
    end
endmodule