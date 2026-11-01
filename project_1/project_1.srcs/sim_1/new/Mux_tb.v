`timescale 1ns/1ps

module tb_mux4x1;

    reg I0, I1, I2, I3;
    reg S1, S0;
    wire Y;

    // Instantiate DUT
    mux4x1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin
        $display("I0 I1 I2 I3 | S1 S0 | Y");
        $display("-------------------------");

        I0=0; I1=0; I2=0; I3=0;
        S1=0; S0=0; #10;
        $display("%b  %b  %b  %b  |  %b  %b  | %b",
                 I0,I1,I2,I3,S1,S0,Y);

        I0=1; I1=0; I2=0; I3=0;
        S1=0; S0=0; #10;
        $display("%b  %b  %b  %b  |  %b  %b  | %b",
                 I0,I1,I2,I3,S1,S0,Y);

        I0=0; I1=1; I2=0; I3=0;
        S1=0; S0=1; #10;
        $display("%b  %b  %b  %b  |  %b  %b  | %b",
                 I0,I1,I2,I3,S1,S0,Y);

        I0=0; I1=0; I2=1; I3=0;
        S1=1; S0=0; #10;
        $display("%b  %b  %b  %b  |  %b  %b  | %b",
                 I0,I1,I2,I3,S1,S0,Y);

        I0=0; I1=0; I2=0; I3=1;
        S1=1; S0=1; #10;
        $display("%b  %b  %b  %b  |  %b  %b  | %b",
                 I0,I1,I2,I3,S1,S0,Y);

        $finish;
    end

endmodule