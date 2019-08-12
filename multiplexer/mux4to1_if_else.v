module mux4to1_if_else(w0, w1, w2, w3, S, f);
    input w0, w1, w2, w3;
    input [1:0] S;
    output f;
    reg f;

    always@(w0 or w1 or w2 or w3 or S)
        if (S == 2'b00) f = w0;
        else if (S == 2'b01) f = w1;
        else if (S == 2'b10) f = w2;
        else f = w3;

endmodule