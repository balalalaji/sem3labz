`timescale 1ns/1ns
`include "q3.v"
module q3_tb();
reg [3:0] w;
wire [3:0] bcd;
q3 m1(bcd,w);
initial
begin
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);
w=4'b0100; #20;
w=4'b1000;#20;
w=4'b0000;#20;
w=4'b1111;#20;
$display("Test Sucessful");
end
endmodule