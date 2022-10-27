`timescale 1ns/1ns
`include "q3.v"
module q3_tb();
reg [2:0] W;
reg En;
wire f;
q3 s1(W,En,f);
initial
begin
	$dumpfile("q3_tb.vcd");
	$dumpvars(0, q3_tb);
W = 0; En=1;
#20;
W = 1; En=1;
#20;
W = 2; En=1;
#20;
W = 3; En=1;
#20;
	$display("Test complete");
end
endmodule