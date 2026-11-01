//NAND Gate using behavioural modelling

`timescale 1ns/1ps
module nand_gate(input x,y,output reg z);
    always @(*)
      z = ~(x&y);
endmodule    