`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg [3:0] b;
wire [3:0] g;

q4 m1(b,g);
initial begin
$dumpfile("q4_tb.vcd");
$dumpvars(0,q4_tb);

b=4'b1010;#20;
b=4'b1100;#20;
b=4'b1001;#20;
b=4'b0101;#20;

$display("Test Complete");
end
endmodule