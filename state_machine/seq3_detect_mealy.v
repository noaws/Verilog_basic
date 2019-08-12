module seq3_detect_mealy(x,clk, y);
// Mealy machine for a three-1s sequence detection
    input x, clk;
    output y;
    reg y;
    reg [1:0] pstate, nstate; //present and next states
    parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
// Next state and output combinational logic
// Use blocking assignments "="
    always @(x or pstate)
        case (pstate)
            S0: if (x) begin nstate = S1; y = 0; end
                else begin nstate = S0; y = 0; end
            S1: if (x) begin nstate = S2; y = 0; end
                else begin nstate = S0; y = 0; end
            S2: if (x) begin nstate = S3; y = 0; end
                else begin nstate = S0; y = 0; end
            S3: if (x) begin nstate = S3; y = 1; end
                else begin nstate = S0; y = 0; end
            default:nstate = S0;
        endcase
// Sequential logic, use nonblocking assignments "<="
    always @(posedge clk)
        pstate <= nstate;

endmodule