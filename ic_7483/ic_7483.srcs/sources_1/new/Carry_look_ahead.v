`timescale 1ns / 1ps



module Carry_look_ahead(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] p, g;
    wire [3:0] c;

    assign p = a ^ b;
    assign g = a & b;

    assign c[0] = cin;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]) |
                  (p[1] & p[0] & c[0]);
    assign c[3] = g[2] | (p[2] & g[1]) |
                  (p[2] & p[1] & g[0]) |
                  (p[2] & p[1] & p[0] & c[0]);

    full_adder FA0(a[0], b[0], c[0], sum[0], );
    full_adder FA1(a[1], b[1], c[1], sum[1], );
    full_adder FA2(a[2], b[2], c[2], sum[2], );
    full_adder FA3(a[3], b[3], c[3], sum[3], );

    assign cout = g[3] | (p[3] & c[3]);
endmodule
