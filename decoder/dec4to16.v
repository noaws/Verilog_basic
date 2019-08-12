module dec4to16 (W, Y, En);
    input [3:0] W;
    input En;
    output [0:15] Y;
    wire [0:3] M;
    
    dec2to4_al Dec1 (W[3:2], M[0:3], En);
    dec2to4_al Dec2 (W[1:0], Y[0:3], M[0]);
    dec2to4_al Dec3 (W[1:0], Y[4:7], M[1]);
    dec2to4_al Dec4 (W[1:0], Y[8:11], M[2]);
    dec2to4_al Dec5 (W[1:0], Y[12:15], M[3]);
    
endmodule   