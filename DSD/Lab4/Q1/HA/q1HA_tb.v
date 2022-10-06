`timescale 1ns/1ns
`include "q1HA.v"
module q1HA_tb();
reg x,y;
wire f1,f2;
q1HA q(x,y,f1,f2);
initial
begin
$dumpfile("q1HA_tb.vcd");
$dumpvars(0, q1HA_tb);
	x=1'b0; y=1'b0; #20;
	x=1'b0; y=1'b1; #20;
	x=1'b1; y=1'b0; #20;
	x=1'b1; y=1'b1; #20;
	$display ("TEST SUCESSFULL");
end
endmodule