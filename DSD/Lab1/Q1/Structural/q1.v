module q1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	and (a1,a,b);
	and (a2,a,b);
	or (c1,a1,c);
	or (c2,a2,c);
	not (k,c1);
	and (j,k,d);
	or (i,c2,d);
	and (f,j,i);
endmodule
