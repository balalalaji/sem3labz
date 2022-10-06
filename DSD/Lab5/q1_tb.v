`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg [4:0] x,y;
wire lt,gt,eq;
q1 qu(x,y,lt,gt,eq);
initial
begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0,q1_tb);
    x=5'b10001;y=5'b11101;#20;
    x=5'b11000;y=5'b11110;#20;
    x=5'b10101;y=5'b10111;#20;
    x=5'b00000;y=5'b11010;#20;    
    $display("TEST SUCESSFUL");
end
endmodule
