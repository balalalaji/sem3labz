module q3(a,b,c,d,e,f);
	input a,b,c,d,e;
	output f;
	or (h,~a,b);
	and (g,e,h);
	not (g1,g);
	and (t1,~c,~d,g);
	and (t2,c,d,g);
	and (t3,~c,d,g1);
	or (f,t1,t2,t3); 
endmodule
