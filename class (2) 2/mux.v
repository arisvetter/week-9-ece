module simple_4_mux(
    input [1:0] Sel,
    input [3:0] CEOData, [3:0] YourData, [3:0] FredData, [3:0] JillData, Enable,
    output [3:0] Y,
);

    assign Y = Enable? (
        (~Sel[0] & ~Sel[1])? CEOdata: (Sel[0] & ~Sel[1])? YourData: (~Sel[0] &  Sel[1])? FredData :  (Sel[0] &  Sel[1])? JillData: 0000
        
        ) : 0000;

endmodule
