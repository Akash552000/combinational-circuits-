module tb_demux1to4;

reg din;
reg [1:0] sel;
wire y0, y1, y2, y3;

demux1to4 dut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    din = 1;

    sel = 2'b00;
    #10 sel = 2'b01;
    #10 sel = 2'b10;
    #10 sel = 2'b11;
    #10 $finish;
end

initial
    $monitor("sel=%b din=%b y0=%b y1=%b y2=%b y3=%b",
             sel, din, y0, y1, y2, y3);

endmodule