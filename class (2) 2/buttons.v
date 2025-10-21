module button(
    input btnL, btnU, btnD, btnR, btnC
);
    wire [4:0] brute;
    assign brute[0] = btnL;
    assign brute[1] = btnU;
    assign brute[0] = btnD;
    assign brute[1] = btnR;
    assign brute[0] = btnC;

endmodule