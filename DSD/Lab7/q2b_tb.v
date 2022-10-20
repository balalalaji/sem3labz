`timescale 1ns/1ns
`include "q2b.v"

module q2b_tb();
reg x,y,z; 
wire f;

q2b m1(x,y,z,f);
initial
begin
$dumpfile("q2b_tb.vcd");
$dumpvars(0,q2b_tb);

x=0;y=0;z=0;#20;
x=0;y=0;z=1;#20;
x=0;y=1;z=0;#20;
x=0;y=1;z=1;#20;
x=1;y=0;z=0;#20;
x=1;y=0;z=1;#20;
x=1;y=1;z=0;#20;
x=1;y=1;z=1;#20;

$display("Test Complete");
end
endmodule