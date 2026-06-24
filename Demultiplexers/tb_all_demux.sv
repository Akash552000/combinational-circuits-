
`timescale 1ns/1ps

module tb_all_demux;

    logic din;
    logic [2:0] sel;
    logic y1to2_0, y1to2_1;
    logic y1to4_0, y1to4_1, y1to4_2, y1to4_3;
    logic y1to8_0, y1to8_1, y1to8_2, y1to8_3;
    logic y1to8_4, y1to8_5, y1to8_6, y1to8_7;

    all_demux dut (
        .din(din), .sel(sel),
        .y1to2_0(y1to2_0), .y1to2_1(y1to2_1),
        .y1to4_0(y1to4_0), .y1to4_1(y1to4_1),
        .y1to4_2(y1to4_2), .y1to4_3(y1to4_3),
        .y1to8_0(y1to8_0), .y1to8_1(y1to8_1),
        .y1to8_2(y1to8_2), .y1to8_3(y1to8_3),
        .y1to8_4(y1to8_4), .y1to8_5(y1to8_5),
        .y1to8_6(y1to8_6), .y1to8_7(y1to8_7)
    );

    initial begin
        $display("Time | sel din | 1:2 outputs | 1:4 outputs | 1:8 outputs");
        $display("---------------------------------------------------------");

        din = 1;
        for (int i = 0; i < 8; i++) begin
            sel = i;
            #10;
            $display("%4t | %3b  %b  | %b %b | %b %b %b %b | %b %b %b %b %b %b %b %b",
                     $time, sel, din,
                     y1to2_0, y1to2_1,
                     y1to4_0, y1to4_1, y1to4_2, y1to4_3,
                     y1to8_0, y1to8_1, y1to8_2, y1to8_3,
                     y1to8_4, y1to8_5, y1to8_6, y1to8_7);
        end

        $finish;
    end

endmodule
