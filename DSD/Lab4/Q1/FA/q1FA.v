module q1FA(x1,x2,x3,f1,f2);
    input x1,x2,x3;
    output f1,f2;
    assign f1=x1^x2^x3;
    assign a1=x1&x2;
    assign a2=x1&x3;
    assign a3=x2&x3;
    assign f2=a1|a2|a3;
endmodule