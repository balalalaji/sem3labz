module q2(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nor (h,b,d);
	nor (i,b,c);
	nor (j,a,c);
	nor (jCompli,j,j);
	nor (k,h,i);
	nor (kCompli,k,k);
	nor (dCompli,d,d);
	nor (l,jCompli,dCompli);
	nor (m,kCompli,l);
	nor (f,m,m);
endmodule
