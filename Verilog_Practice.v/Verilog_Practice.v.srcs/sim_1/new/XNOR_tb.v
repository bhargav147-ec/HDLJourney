`timescale 1ns / 1ps

module xnor_tb;
    reg input_a,input_b;
    wire out;
    
    xnor_gate gut(                      //Gate-under-test
        .a(input_a),.b(input_b),.c(out)
    );
    
   initial begin
        input_a =0;input_b=0;     
     #10 input_a =0;input_b=1;
     #10 input_a =1;input_b=0;
     #10 input_a =1;input_b=1;
     #10   $finish;
     end
endmodule