
`timescale 1ns/1ps

module tb_all_gates;

    logic a, b;
    logic y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor;

    all_gates dut (
        .a(a),
        .b(b),
        .y_and(y_and),
        .y_or(y_or),
        .y_not(y_not),
        .y_nand(y_nand),
        .y_nor(y_nor),
        .y_xor(y_xor),
        .y_xnor(y_xnor)
    );

    initial begin
        $display("Time | a b | AND OR NAND NOR XOR XNOR | NOT(a)");
        $display("------------------------------------------------");

        for (int i = 0; i < 4; i++) begin
            {a, b} = i;
            #10;
            $display("%4t | %b %b |  %b   %b   %b    %b    %b    %b  |   %b",
                     $time, a, b, y_and, y_or, y_nand, y_nor, y_xor, y_xnor, y_not);
        end

        $finish;
    end

endmodule
