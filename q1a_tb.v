`timescale 1ns/1ns
`include "q1a.v"
module q1a_tb;
reg clear, clk;
wire [2:0] Q;
q1a G0 (clear, clk, Q);
always #5 clk=~clk;
initial
begin
clear=0;
clk=1;
#150 $finish;
end
initial
begin
$dumpfile("q1a_tb.vcd");
$dumpvars(0,q1a_tb);
$monitor($time, " clear=%b, Q=%3b", clear, Q );

					X|0|X
					X|0|0
					0|X|X
