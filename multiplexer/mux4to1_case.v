module mux4to1_case(W, S, f);
    input [0:3] W;
    input [1:0] S;
    output f;
    reg f;

    always @ (W or S)
        case (S)
          0: f = W[0];
          1: f = W[1];
          2: f = W[2];
          3: f = W[3];
        endcase

endmodule
