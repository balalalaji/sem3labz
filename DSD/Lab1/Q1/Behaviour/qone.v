module qone (a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign g=(~((a&b)|c)&d);
	assign h=(((a&b)|c)|d);
	assign f=(g&h);
endmodule
	
