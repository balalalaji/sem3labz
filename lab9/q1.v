module q1(W, En,f);
input [3:0] W;
input En;
output f;
wire [15:0] Y;
dec4to16 decoder(W,Y,En);
assign f= Y[1] | Y[3] | Y[6] | Y[7] | Y[9] | Y[14] | Y[15];
endmodule

module dec4to16(w,y,En);
input [3:0] w;
input En;
output [15:0] y;

wire t1,t2;
assign t1 = ~w[3] & En;
assign t2 = w[3] & En;

threeTo8Decoder stage0(w[2:0],t1,y[7:0]);
threeTo8Decoder stage1(w[2:0],t2,y[15:8]);

endmodule

module threeTo8Decoder(w,En,y);
    input [2:0] w;
    input En;
    output reg [7:0] y;

    integer k;

    always @(w or En)
        for(k = 0; k <= 7; k=k+1)
        if ((w == k) && (En == 1))
            y[k] = 1;
        else 
            y[k] = 0;

endmodule