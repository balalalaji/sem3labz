`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [3:0] W;
reg En;
wire f;
q1 s1(W,En,f);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0, q1_tb);
W = 0; En=1;
#20;
W = 1; En=1;
#20;
W = 2; En=1;
#20;
W = 3; En=1;
#20;
W = 4; En=1;
#20;
W = 5; En=1;
#20;
W = 6; En=1;
#20;
W = 7; En=1;
#20;
W = 8; En=1;
#20;
W = 9; En=1;
#20;
W = 10; En=1;
#20;
W =11; En=1;
#20;
W = 12; En=1;
#20;
W = 13; En=1;
#20;
W = 14; En=1;
#20;
W = 15; En=1;
#20;
	$display("Test complete");
end
endmodule