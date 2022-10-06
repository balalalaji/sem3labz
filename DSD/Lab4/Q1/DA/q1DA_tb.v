`timescale 1ns/1ns
`include "q1DA.v"
module q1DA_tb();
reg x,y,c;
wire s,cout;
q1DA q(x,y,c,s,cout);
initial
begin
$dumpfile("q1DA_tb.vcd");
$dumpvars(0, q1DA_tb);
	x=1'b0; y=1'b0; c=1'b0; #20;
	x=1'b0; y=1'b0; c=1'b1; #20;
	x=1'b0; y=1'b1; c=1'b0; #20;
	x=1'b0; y=1'b1; c=1'b1; #20;
	x=1'b1; y=1'b0; c=1'b0; #20;
	x=1'b1; y=1'b0; c=1'b1; #20;
	x=1'b1; y=1'b1; c=1'b0; #20;	
	x=1'b1; y=1'b1; c=1'b1; #20;
	$display ("TEST SUCESSFULL");
end
endmodule