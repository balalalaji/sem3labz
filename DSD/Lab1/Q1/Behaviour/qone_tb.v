`timescale 1ns/1ns
`include "qone.v"
module qone_tb();
reg a,b,c,d;
wire f;
qone qu1(a,b,c,d,f);
initial
begin
$dumpfile("qone_tb.vcd");
$dumpvars(0, qone_tb);
	a=1'b0; b=1'b0; c=1'b0; d=1'b0; #20;
	a=1'b0; b=1'b0; c=1'b0; d=1'b1; #20;
	a=1'b0; b=1'b0; c=1'b1; d=1'b0; #20;
	a=1'b0; b=1'b0; c=1'b1; d=1'b1; #20;
	a=1'b0; b=1'b1; c=1'b0; d=1'b0; #20;
	a=1'b0; b=1'b1; c=1'b0; d=1'b1; #20;
	a=1'b0; b=1'b1; c=1'b1; d=1'b0; #20;	
	a=1'b0; b=1'b1; c=1'b1; d=1'b1; #20;
	a=1'b0; b=1'b0; c=1'b0; d=1'b0; #20;
	a=1'b1; b=1'b0; c=1'b0; d=1'b1; #20;
	a=1'b1; b=1'b0; c=1'b1; d=1'b0; #20;
	a=1'b1; b=1'b0; c=1'b1; d=1'b1; #20;
	a=1'b1; b=1'b1; c=1'b0; d=1'b0; #20;
	a=1'b1; b=1'b1; c=1'b0; d=1'b1; #20;
	a=1'b1; b=1'b1; c=1'b1; d=1'b0; #20;
	a=1'b1; b=1'b1; c=1'b1; d=1'b1; #20;
end
endmodule
