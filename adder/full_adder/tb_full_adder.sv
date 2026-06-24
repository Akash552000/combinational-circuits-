
`timescale 1ns/1ps

module tb_full_adder;

    logic a, b, cin;
    logic sum, cout;

    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("Time | a b cin | sum cout");
        $display("-------------------------");

        for (int i = 0; i < 8; i++) begin
            {a, b, cin} = i;
            #10;
            $display("%4t | %b %b  %b  |  %b    %b", $time, a, b, cin, sum, cout);
        end

        $finish;
    end

endmodule
