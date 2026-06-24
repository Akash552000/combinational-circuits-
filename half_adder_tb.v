`timescale 1ns/1ps

module tb_half_adder;

    logic a, b;
    logic sum, carry;

    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $display("Time | a b | sum carry");
        $display("----------------------");

        a = 0; b = 0; #10;
        $display("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);

        $finish;
    end

endmodule
