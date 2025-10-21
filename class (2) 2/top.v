
module top(
    input [15:0] sw, 
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    wire [4:0] transferWire;
    mux mux_inst_1 (
    .Sel({btnU, btnL}),
    .CEOData(sw[3:0]),
    .YourData(sw[7:4]),
    .FredData(sw[11:8]),
    .JillData(sw[15:12]),
    .Enable(btnC),
    .UserData(transferWire[3:0])
    );
    
    demux demux_inst_1 (
    .Sel({btnR, btnD}),
    .UserData(transferWire[3:0]),
    .localLib(led[3:0]),
    .fireDep(led[7:4]),
    .school(led[11:8]),
    .ribShack(led[15:12])
    );
    
endmodule
