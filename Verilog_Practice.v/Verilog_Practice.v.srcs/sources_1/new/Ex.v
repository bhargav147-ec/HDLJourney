//Dataflow modelling

module ex_data(input x,y,z ,output w,f);
    assign w= (~y)&z;
    assign f= x|w;
endmodule

//Behavioural modelling

module ex_beh(input x,y,z, output reg f);
    always @(*)
        f = (~y)&z|x;
endmodule

//Structural modelling

module ex_str(input x,y,z ,output f);
       not g1(y_not,y);
       and g2(w,z,y_not);
       or g3(f,x,w);
endmodule            