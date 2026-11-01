
`timescale 1ns / 1ps

module d_tb;

    reg d, enable;
    wire q;

    d_latch uut (
        .d(d),
        .enable(enable),
        .q(q)
    );

    initial begin
        $monitor("Time=%0t En=%b D=%b Q=%b",
                  $time, enable, d, q);

        enable = 0; d = 0;
        #10;

        enable = 1; d = 1;  // Output follows D
        #10;

        d = 0;
        #10;

        d = 1;
        #10;

        enable = 0; d = 0;  // Output holds
        #10;

        d = 1;
        #10;

        enable = 1;
        #10;

        $finish;
    end

endmodule
