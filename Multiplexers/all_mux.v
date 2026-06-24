
module all_mux (
    input  wire d0, d1, d2, d3, d4, d5, d6, d7,
    input  wire [2:0] sel,
    output wire y2to1,
    output wire y4to1,
    output wire y8to1
);

    // 2:1 MUX
    assign y2to1 = sel[0] ? d1 : d0;

    // 4:1 MUX
    assign y4to1 = (sel[1:0] == 2'b00) ? d0 :
                   (sel[1:0] == 2'b01) ? d1 :
                   (sel[1:0] == 2'b10) ? d2 :
                                          d3;

    // 8:1 MUX
    assign y8to1 = (sel == 3'b000) ? d0 :
                   (sel == 3'b001) ? d1 :
                   (sel == 3'b010) ? d2 :
                   (sel == 3'b011) ? d3 :
                   (sel == 3'b100) ? d4 :
                   (sel == 3'b101) ? d5 :
                   (sel == 3'b110) ? d6 :
                                     d7;

endmodule
