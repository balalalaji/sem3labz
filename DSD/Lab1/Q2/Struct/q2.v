module q2(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
nand(ab,a,b);
xor (f,d,ab,c);
nor(g,b,c,d);
endmodule

