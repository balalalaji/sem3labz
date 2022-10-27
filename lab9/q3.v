module q3(w,En,f);
    input [2:0] w;
    input En;
    output f;
    wire [0:3] y1;
    wire [0:3] y2;
    wire c;
    assign c=~w[0]&En;
    assign d=w[0]&En;
    TwoToFourDecoder stage0(w[2:1],c,y1);
    TwoToFourDecoder stage1(w[2:1],d,y2);
    assign f= y2[1] | y2[2] | y2[3] |  y1[3] ;

endmodule

module TwoToFourDecoder(w,En,y);
    input [1:0] w;
    input En;
    output reg [0:3] y;
    always @(w or En)
    begin
            y=4'b0000;
        if (En == 1)
        begin
            
            if (w == 0)
                y[0] = 1;
            if (w == 1)
                y[1] = 1;
            if (w == 2)
                y[2] = 1;
            if (w == 3)
                y[3] = 1; 
        end
    end
endmodule