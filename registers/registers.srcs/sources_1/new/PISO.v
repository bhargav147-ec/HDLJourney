`timescale 1ns / 1ps

module d_ff(
    input d,
    input clk,
    output reg q = 0
);

    always @(negedge clk) begin
        q <= d;
    end

endmodule        

module PISO(
    input i0, i1, i2, i3,
    input clk, shift,
    output q4
);

    wire q1, q2, q3, q4_reg;

    d_ff u1(.d((shift & 1'b0)|(~shift & i0)), .clk(clk), .q(q1));

    d_ff u2(.d((shift & q1)|(~shift & i1)), .clk(clk), .q(q2));

    d_ff u3(.d((shift & q2)|(~shift & i2)), .clk(clk), .q(q3));

    d_ff u4(.d((shift & q3)|(~shift & i3)), .clk(clk), .q(q4));


endmodule
