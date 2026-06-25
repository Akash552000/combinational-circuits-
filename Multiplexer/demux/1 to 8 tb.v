module tb_demux1to8;

reg din;
reg [2:0] sel;
wire [7:0] y;

demux1to8 dut(
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin
    din = 1;

    sel = 0; #10;
    sel = 1; #10;
    sel = 2; #10;
    sel = 3; #10;
    sel = 4; #10;
    sel = 5; #10;
    sel = 6; #10;
    sel = 7; #10;

    $finish;
end

initial
    $monitor("sel=%d din=%b y=%b", sel, din, y);

endmodule