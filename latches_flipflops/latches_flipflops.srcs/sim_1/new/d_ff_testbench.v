
`timescale 1ns / 1ps

module tb_d_flipflop;

    reg d, clk;
    wire q;

    d_flipflop uut (
        .d(d),
        .clk(clk),
        .q(q)
    );

    // Clock period = 10 ns
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t CLK=%b D=%b Q=%b",
                  $time, clk, d, q);

        d = 0;
        #12;

        d = 1;
        @(posedge clk);
        #1;

        d = 0;
        @(posedge clk);
        #1;

        d = 1;
        @(posedge clk);
        #1;

        d = 0;
        @(posedge clk);
        #1;

        $finish;
    end

endmodule
