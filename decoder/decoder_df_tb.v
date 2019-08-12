`resetall
`timescale 1ns/1ns

module decoder_df_tb;
    reg A, B, E;
    wire [0:3] D;

    decoder_df d1(A, B,E, D);
    initial 
    begin
      E = 1; A = 0; B = 0;
      #10 E = 0;
      #10 B = 1;
      #10 A = 1; B = 0;
      #10 B = 1;
    end

endmodule