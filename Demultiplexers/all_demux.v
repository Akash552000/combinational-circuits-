
module all_demux (
    input  wire din,
    input  wire [2:0] sel,
    output wire y1to2_0, y1to2_1,
    output wire y1to4_0, y1to4_1, y1to4_2, y1to4_3,
    output wire y1to8_0, y1to8_1, y1to8_2, y1to8_3,
    output wire y1to8_4, y1to8_5, y1to8_6, y1to8_7
);

    // 1:2 DEMUX
    assign y1to2_0 = (~sel[0]) & din;
    assign y1to2_1 = ( sel[0]) & din;

    // 1:4 DEMUX
    assign y1to4_0 = (sel[1:0] == 2'b00) ? din : 0;
    assign y1to4_1 = (sel[1:0] == 2'b01) ? din : 0;
    assign y1to4_2 = (sel[1:0] == 2'b10) ? din : 0;
    assign y1to4_3 = (sel[1:0] == 2'b11) ? din : 0;

    // 1:8 DEMUX
    assign y1to8_0 = (sel == 3'b000) ? din : 0;
    assign y1to8_1 = (sel == 3'b001) ? din : 0;
    assign y1to8_2 = (sel == 3'b010) ? din : 0;
    assign y1to8_3 = (sel == 3'b011) ? din : 0;
    assign y1to8_4 = (sel == 3'b100) ? din : 0;
    assign y1to8_5 = (sel == 3'b101) ? din : 0;
    assign y1to8_6 = (sel == 3'b110) ? din : 0;
    assign y1to8_7 = (sel == 3'b111) ? din : 0;

endmodule
