
`timescale 1ns/1ps

module tb_ripple_carry_adder;

    logic [3:0] a, b;
    logic cin;
    logic [3:0] sum;
    logic cout;

    ripple_carry_adder dut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        $display("Time |   a    b  cin | sum cout");
        $display("--------------------------------");

        // Try a few combinations
        a=4'b0000; b=4'b0000; cin=0; #10;
        $display("%4t | %4b %4b  %b  | %4b   %b", $time, a, b, cin, sum, cout);

        a=4'b0101; b=4'b0011; cin=0; #10;
        $display("%4t | %4b %4b  %b  | %4b   %b", $time, a, b, cin, sum, cout);

        a=4'b1111; b=4'b0001; cin=1; #10;
        $display("%4t | %4b %4b  %b  | %4b   %b", $time, a, b, cin, sum, cout);

        a=4'b1010; b=4'b0101; cin=0; #10;
        $display("%4t | %4b %4b  %b  | %4b   %b", $time, a, b, cin, sum, cout);

        $finish;
    end

endmodule
