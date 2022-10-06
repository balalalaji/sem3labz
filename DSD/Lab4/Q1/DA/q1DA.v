module q1DA(x,y,c,s,cout);
    input x,y,c;
    output s,cout;
    assign f1=x^y;
    assign f2=x&y;
    assign s=f1^c;
    assign f4=f1&c;
    assign cout=f4|f2;
endmodule