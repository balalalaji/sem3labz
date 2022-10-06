module q1(x,y,a,b,s0,s1,f)
2to1mux stage 0(x,y,s0,xy);
2to1mux stage 1(a,b,s0,ab);
2to1mux stage 2(ab,xy,s1,f);
endmodule

module 2to1mux(w1,w2,s,f)
input w1,w2,s;
output f;
reg f;
always @(s)
begin
    if(s==1)
        f=w1;
    else
        f=w2;
end
endmodule