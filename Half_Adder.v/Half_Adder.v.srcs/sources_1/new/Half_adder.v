
module Half_adder(input a,input b,output sum,output carry);
assign sum = a^b;
assign carry = a&b;
endmodule


`timescale 1ns / 1ps

module Half_adder_tb;
    reg a,b;
    wire sum,carry;
    
    Half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));
    
    initial begin
        #10 a=0;b=0;
        #10 a=0;b=1;
        #10 a=1;b=0;
        #10 a=1;b=1;
   
        end
   endmodule 
    