module adder4(A, B, cin, S, cout);
    input[3:0] A, B;
    input cin;
    output[3:0] S;
    output cout;
    wire c1, c2, c3;
// 4 instantiated 1-bit Full Adders
    FullAdder fa0(A[0], B[0], cin, c1, S[0]);
    FullAdder fa1(A[1], B[1], c1, c2, S[1]);
    FullAdder fa2(A[2], B[2], c2, c3, S[2]);
    FullAdder fa3(A[3], B[3], c3, cout, S[3]);
endmodule