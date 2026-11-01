`timescale 1ns / 1ps

module full_adder(input a,b,cin,output sum,carry);
    assign sum=a^b^cin;
    assign carry=(a&b)|(cin & a)|(cin&b);
endmodule    

module Ripple_carry_adder(
    input [3:0]a,b,
    input m,cin,
    output [3:0] s,
    output [3:0] cout
    );
    wire [4:0] c;
    assign c[0] = cin | m;
   full_adder u1(a[0],b[0]^m,c[0],s[0],c[1]);
   full_adder u2(a[1],b[1]^m,c[1],s[1],c[2]);
   full_adder u3(a[2],b[2]^m,c[2],s[2],c[3]);
   full_adder u4(a[3],b[3]^m,c[3],s[3],c[4]);
   
   assign cout = c[4:1];
endmodule
