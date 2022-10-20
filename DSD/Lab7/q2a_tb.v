`timescale 1ns/1ns
`include "q2a.v"

module q2a_tb();
reg x,y,z; 
wire f;

q2a m1(x,y,z,f);
initial
begin
$dumpfile("q2a_tb.vcd");
$dumpvars(0,q2a_tb);

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