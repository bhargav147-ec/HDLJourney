
`timescale 1ns / 1ps

module tb_jk_flipflop;

    reg j, k, clk;
    wire q;

    jk_flipflop uut (
        .j(j),
        .k(k),
        .clk(clk),
        .q(q)
    );

    // Clock period = 10 ns
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t CLK=%b J=%b K=%b Q=%b",
                  $time, clk, j, k, q);

        j = 0; k = 0;  // Hold
        #12;

        j = 1; k = 0;  // Set
        @(negedge clk);
        #1;

        j = 0; k = 1;  // Reset
        @(negedge clk);
        #1;

        j = 0; k = 0;  // Hold
        @(negedge clk);
        #1;

        j = 1; k = 1;  // Toggle
        repeat (2) begin
            @(negedge clk);
            #1;
        end

        $finish;
    end

endmodule
