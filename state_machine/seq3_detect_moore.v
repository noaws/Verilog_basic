module seq3_detect_moore (x,clk, y);
// Moore machine for a three-1s sequence detection
    input x, clk;
    output y;
    reg [1:0] state;
    parameter S0=2'b00, S1=2'b01, S2=2'b10,S3=2'b11;
// Define the sequential block
    always @(posedge clk)
        case (state)
            S0: if (x) state <= S1;
                else state <= S0;
            S1: if (x) state <= S2;
                else state <= S0;
            S2: if (x) state <= S3;
                else state <= S0;
            S3: if (x) state <= S3;
                else state <= S0;
            default:state <= S0;
        endcase
// Define output during S3
    assign y = (state == S3);

endmodule    