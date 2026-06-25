module demux1to8(
    input din,
    input [2:0] sel,
    output reg [7:0] y
);

always @(*) begin
    y = 8'b00000000;

    case(sel)
        3'd0: y[0] = din;
        3'd1: y[1] = din;
        3'd2: y[2] = din;
        3'd3: y[3] = din;
        3'd4: y[4] = din;
        3'd5: y[5] = din;
        3'd6: y[6] = din;
        3'd7: y[7] = din;
    endcase
end

endmodule