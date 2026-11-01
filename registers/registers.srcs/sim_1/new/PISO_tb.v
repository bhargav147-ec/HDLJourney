
module tb_PISO;

    reg i0, i1, i2, i3;
    reg clk, shift;
    wire q4;

    // DUT instantiation
    PISO uut(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .clk(clk),
        .shift(shift),
        .q4(q4)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | shift=%b | Inputs=%b%b%b%b | Serial_out=%b",
                  $time, shift, i3, i2, i1, i0, q4);

        i0 = 0; i1 = 0; i2 = 0; i3 = 0;
        shift = 0;

        #10;
        i0 = 1; i1 = 0; i2 = 1; i3 = 1;
        shift = 0;

        #10;

        shift = 1;

        #40;
        shift = 0;

        #10;
        $finish;
    end

endmodule
