
module mux(
    input [1:0] Sel,
    input [3:0] CEOData, YourData, FredData, JillData, 
    input Enable,
    output [3:0] UserData
    );
    assign UserData = Enable? ((~Sel[0] & ~Sel[1])? CEOData: (Sel[0] & ~Sel[1])? YourData: (~Sel[0] &  Sel[1])? FredData : (Sel[0] &  Sel[1])? JillData:0000) : 0000;

endmodule
