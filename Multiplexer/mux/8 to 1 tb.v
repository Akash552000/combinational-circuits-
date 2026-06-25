module tb_mux8to1;

reg i0,i1,i2,i3,i4,i5,i6,i7;
reg [2:0] sel;
wire y;

mux8to1 dut(i0,i1,i2,i3,i4,i5,i6,i7,sel,y);

initial begin
i0=0;i1=1;i2=0;i3=1;
i4=0;i5=1;i6=0;i7=1;

sel=0;
#10 sel=1;
#10 sel=2;
#10 sel=3;
#10 sel=4;
#10 sel=5;
#10 sel=6;
#10 sel=7;

#10 $finish;
end

initial
$monitor("sel=%d y=%b",sel,y);

endmodule