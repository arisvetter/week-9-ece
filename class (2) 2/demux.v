module demux(
    input [3:0] UserData,
    input [1:0] Sel,
    output [1:0] localLib,
    output [1:0] fireDep,
    output [1:0] school,
    output [1:0] ribShack
);

    assign localLib = (Sel == 'b00 ? UserData : 0000); // Drive Y1 if Sel == 0
    assign fireDep = (Sel == 'b01 ? UserData : 0000); // Drive Y2 if Sel == 1
    assign school = (Sel == 'b10 ? UserData : 0000); // Drive Y3 if Sel == 0
    assign ribShack = (Sel == 'b11 ? UserData : 0000); // Drive Y4 if Sel == 1

endmodule