module mux16to1(W, S16, f);
    input [0:15] W;
    input [3:0] S16;
    output f;
    wire [0:3] M;

    mux4to1_al mux1 (W[0:3], S16[1:0], M[0]);
    mux4to1_al mux2 (W[4:7], S16[1:0], M[1]);
    mux4to1_al mux3 (W[8:11], S16[1:0], M[2]);
    mux4to1_al mux4 (W[12:15], S16[1:0], M[3]);
    mux4to1_al mux5 (M[0:3], S16[3:2], f);

endmodule