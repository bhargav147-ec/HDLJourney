
`timescale 1ns / 1ps

module rs_tb;

    reg r, s, enable;
    wire q_rs;

    // Instantiate RS latch
    rs_latch uut (
        .r(r),
        .s(s),
        .enable(enable),
        .q(q_rs)
    );

    // Apply test vectors
    initial begin
        $display("--------------------------------");
        $display("Time  En  R  S  |  Q");
        $display("--------------------------------");

        // Initial values
        r = 0;
        s = 0;
        enable = 0;

        #10;

        // Set condition
        enable = 1; r = 0; s = 1;
        #10;
        $display("%4t   %b   %b  %b  |  %b",
                 $time, enable, r, s, q_rs);

        // Hold condition
        r = 0; s = 0;
        #10;
        $display("%4t   %b   %b  %b  |  %b",
                 $time, enable, r, s, q_rs);

        // Reset condition
        r = 1; s = 0;
        #10;
        $display("%4t   %b   %b  %b  |  %b",
                 $time, enable, r, s, q_rs);

        // Hold after reset
        r = 0; s = 0;
        #10;
        $display("%4t   %b   %b  %b  |  %b",
                 $time, enable, r, s, q_rs);

        // Disable latch
        enable = 0; r = 0; s = 1;
        #10;
        $display("%4t   %b   %b  %b  |  %b",
                 $time, enable, r, s, q_rs);

        $display("RS latch simulation completed.");
        $finish;
    end

endmodule
