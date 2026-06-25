module tb_mux4to1;

reg i0,i1,i2,i3;
reg [1:0] sel;
wire y;

mux4to1 dut(i0,i1,i2,i3,sel,y);

initial begin
i0=0;i1=1;i2=0;i3=1;

sel=2'b00;
#10 sel=2'b01;
#10 sel=2'b10;
#10 sel=2'b11;

#10 $finish;
end

initial
$monitor("sel=%b y=%b",sel,y);

endmodule