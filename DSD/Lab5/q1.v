module q1(x,y,lt,gt,eq);
input [4:0]x,y;
output lt,gt,eq;
wire [4:0]i;
assign i = ~(x^y);
assign eq = i[4]&i[3]&i[2]&i[1]&i[0];
assign gt = x[4]&(~y[4])|i[4]&x[3]&(~y[3])|i[3]&x[2]&(~y[2])|i[2]&x[1]&(~y[1])|i[1]&x[0]&(~y[0]);
assign lt = ~(eq|gt);
endmodule
