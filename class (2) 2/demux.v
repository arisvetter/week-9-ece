module demux(
    input [1:0] In,
    input Sel,
    output [1:0] Y1,
    output [1:0] Y2,
    output [1:0] Y3,
    output [1:0] Y4
);

    assign Y1 = (Sel == 1'b0 ? In : 0); // Drive Y1 if Sel == 0
    assign Y2 = (Sel == 1'b1 ? In : 0); // Drive Y2 if Sel == 1
    assign Y3 = (Sel == 1'b2 ? In : 0); // Drive Y1 if Sel == 0
    assign Y4 = (Sel == 1'b3 ? In : 0); // Drive Y2 if Sel == 1

endmodule