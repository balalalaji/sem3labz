`timescale 1ns/1ns
`include "q1FA.v"
module q1FA_tb();
reg x1,x2,x3;
wire f1,f2;
q1FA q(x1,x2,x3,f1,f2);
initial
begin
$dumpfile("q1FA_tb.vcd");
$dumpvars(0, q1FA_tb);
	x1=1'b0; x2=1'b0; x3=1'b0; #20;
	x1=1'b0; x2=1'b0; x3=1'b1; #20;
	x1=1'b0; x2=1'b1; x3=1'b0; #20;
	x1=1'b0; x2=1'b1; x3=1'b1; #20;
	x1=1'b1; x2=1'b0; x3=1'b0; #20;
	x1=1'b1; x2=1'b0; x3=1'b1; #20;
	x1=1'b1; x2=1'b1; x3=1'b0; #20;	
	x1=1'b1; x2=1'b1; x3=1'b1; #20;
	$display ("TEST SUCESSFULL");
end
endmodule