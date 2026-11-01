`timescale 1ns / 1ps

module or_tb;
    reg x,y;
    wire z;
    
    or_gate dut(.x(x),.y(y),.z(z));
    initial begin
         x=0;y=0;
        #10 x=0;y=1;
        #10 x=1;y=0;
        #10 x=1;y=1;
        #10 $finish;
     end   
endmodule
