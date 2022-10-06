module q1HA(x,y,f1,f2);
    input x,y;
    output f1,f2;
    assign f1=x^y;
    assign f2=x&y;
endmodule