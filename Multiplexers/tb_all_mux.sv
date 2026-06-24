
`timescale 1ns/1ps

module tb_all_mux;

    logic d0, d1, d2, d3, d4, d5, d6, d7;
    logic [2:0] sel;
    logic y2to1, y4to1, y8to1;

    all_mux dut (
        .d0(d0), .d1(d1), .d2(d2), .d3(d3),
        .d4(d4), .d5(d5), .d6(d6), .d7(d7),
        .sel(sel),
        .y2to1(y2to1),
        .y4to1(y4to1),
        .y8to1(y8to1)
    );

    initial begin
        $display("Time | sel | y2to1 y4to1 y8to1");
        $display("--------------------------------");

        // Initialize inputs
        d0=0; d1=1; d2=0; d3=1; d4=0; d5=1; d6=0; d7=1;

        for (int i = 0; i < 8; i++) begin
            sel = i;
            #10;
            $display("%4t | %3b |   %b     %b     %b", $time, sel, y2to1, y4to1, y8to1);
        end

        $finish;
    end

endmodule
