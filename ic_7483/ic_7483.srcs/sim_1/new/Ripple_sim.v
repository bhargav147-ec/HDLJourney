`timescale 1ns / 1ps

module Ripple_sim;

    reg [3:0]a,b;
    reg m,cin;  
    wire [3:0]s,cout;   
   
    
    Ripple_carry_adder dut(
                .a(a),
                .b(b),
                .cin(cin),
                .m(m),
                .cout(cout),
                .s(s)
                );
    
initial begin
   a = 4'b0000;
    b = 4'b0000;
    m = 0;
    cin = 0;

    #10 a = 4'b0011; b = 4'b0010;
    #10 a = 4'b0101; b = 4'b0001;
    #10 a = 4'b0111; b = 4'b0100;
    #10 a = 4'b1111; b = 4'b0001;

    #10 m = 1; a = 4'b0101; b = 4'b0010;
    #10 a = 4'b1000; b = 4'b0011;
    #10 a = 4'b1001; b = 4'b0100;
    #10 a = 4'b1100; b = 4'b0101;
    
    #10 $finish;    
      
end    

endmodule                