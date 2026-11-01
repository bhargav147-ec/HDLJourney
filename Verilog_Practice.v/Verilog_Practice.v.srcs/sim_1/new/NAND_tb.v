`timescale 1ns / 1ps

module nand_tb;
    reg int_x,int_y;
    wire out_z;
    
    nand_gate dut(.x(int_x),.y(int_y),.z(out_z));
    initial begin
            int_x=0;int_y=0;
       #10 int_x=0;int_y=1;
       #10 int_x=1;int_y=0;
       #10 int_x=1;int_y=1;
       #10    $finish;
        end
endmodule
