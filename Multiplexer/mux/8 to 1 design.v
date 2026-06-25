module mux8to1(
input i0,i1,i2,i3,i4,i5,i6,i7,
input [2:0] sel,
output reg y
);

always @(*) begin
case(sel)
3'b000:y=i0;
3'b001:y=i1;
3'b010:y=i2;
3'b011:y=i3;
3'b100:y=i4;
3'b101:y=i5;
3'b110:y=i6;
3'b111:y=i7;
endcase
end

endmodule