module dff (Q, D, clear, clk);
input D,clear, clk;
output reg Q;
always @ (posedge clk or negedge clear)
begin
if ( clear==0)
Q<=0;
else if ( D==1)
Q<=~Q;
else Q<=Q;
end
endmodule

module q1a (clear, clk, Q);
input clear, clk;
output [2:0] Q;
wire w1, w2, w3;
dff FF0 (Q[0], 1'b1, clear, clk);
dff FF1 (Q[1], w1 , clear, clk);
dff FF2 (Q[2], w3, clear, clk);
nand G0 (w1,1'b1, Q[0]);
nand G1 (w2,1'b1, Q[1]);
and G2 (w3, w1, w2);
endmodule
