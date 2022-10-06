module q1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nand (b2,b,b);
	nand (h,a, b2);
	nand (d2,d,d);
	nand (i,c,d2);
	nand (j,h,i);
	nand (f,j,j);
	
endmodule
