module button(
    input btnL, btnU, btnD, btnR, btnC
);
    wire [4:0] brute;
    assign brute[0] = btnL;
    assign brute[1] = btnU;
    assign brute[2] = btnD;
    assign brute[3] = btnR;
    assign brute[4] = btnC;

endmodule