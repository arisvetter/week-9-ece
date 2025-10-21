module demux(
    input [3:0] UserData,
    input [1:0] Sel,
    output [1:0] localLib,
    output [1:0] fireDep,
    output [1:0] school,
    output [1:0] ribShack
);

    assign localLib = (Sel == 1'b00 ? In : 0000); // Drive Y1 if Sel == 0
    assign fireDep = (Sel == 1'b01 ? In : 0000); // Drive Y2 if Sel == 1
    assign school = (Sel == 1'b10 ? In : 0000); // Drive Y3 if Sel == 0
    assign ribShack = (Sel == 1'b11 ? In : 0000); // Drive Y4 if Sel == 1

endmodule