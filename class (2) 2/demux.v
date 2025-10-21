module demux(
    input [3:0] UserData,
    input [1:0] Sel,
    output [3:0] localLib,
    output [3:0] fireDep,
    output [3:0] school,
    output [3:0] ribShack
);

    assign localLib = (Sel == 'b00 ? UserData : 'b0000); // Drive Y1 if Sel == 0
    assign fireDep = (Sel == 'b01 ? UserData : 'b0000); // Drive Y2 if Sel == 1
    assign school = (Sel == 'b10 ? UserData : 'b0000); // Drive Y3 if Sel == 0
    assign ribShack = (Sel == 'b11 ? UserData : 'b0000); // Drive Y4 if Sel == 1

endmodule
