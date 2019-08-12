module dec2to4_al (W, Y, En);
    input [1:0] W;
    input En;
    output [0:3] Y;
    reg [0:3] Y;

    always @(W or En)
        begin
            if (En == 0)
                Y = 4'b0000;
            else
                case (W)
                    0: Y = 4'b1000;
                    1: Y = 4'b0100;
                    2: Y = 4'b0010;
                    3: Y = 4'b0001;
                endcase
        end

endmodule