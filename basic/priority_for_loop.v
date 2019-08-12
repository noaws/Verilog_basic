module priority_for_loop (W, Y, z);
    input [3:0] W;
    output [1:0] Y;
    output z;
    reg [1:0] Y;
    reg z;
    integer k;

    always @(W)
        begin
            Y = 2'bx;
            z = 0;
            for (k = 0; k < 4; k = k+1)
                if (W[k])
                    begin
                        Y = k;
                        z = 1;
                    end
        end

endmodule