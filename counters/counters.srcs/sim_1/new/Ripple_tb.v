`timescale 1ns/1ps

module Ripple_tb;
    reg clk, vcc;
    wire i0, i1, i2, i3;

    ripple_counter uut (
        .vcc(vcc), .clk(clk),
        .i0(i0), .i1(i1), .i2(i2), .i3(i3)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        vcc = 1;

        $monitor("Time=%0t | Count=%b%b%b%b",
                 $time, i3, i2, i1, i0);

        #200 $finish;
    end
endmodule