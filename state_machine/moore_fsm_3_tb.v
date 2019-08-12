`resetall
`timescale 1ns/1ns

module moore_fsm_3_tb;
    reg Clock, Resetn, w;
    wire z;

    moore_fsm_3 mm3(Clock, Resetn, w, z);
    initial
    begin
    Clock = 0; mm3.state = 2'b00; Resetn = 1; w = 0;
    forever #10 Clock = ~ Clock
    end

    initial
    begin
      @(negedge Clock) w = 1;
      @(negedge Clock)
      @(negedge Clock)
      @(negedge Clock) w = 0;
      @(negedge Clock) w = 1;
      @(negedge Clock) w = 0;
      @(negedge Clock) w = 1;
      @(posedge Clock) Resetn = 0;
    end
endmodule