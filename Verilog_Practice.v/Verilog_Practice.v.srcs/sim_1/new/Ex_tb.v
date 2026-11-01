`timescale 1ns / 1ps

module ex_tb;
    reg x,y,z;
    wire f,w;
    
ex_data dut(.x(x),.y(y),.z(z),.f(f),.w(w));
initial begin
        x=0;y=0;z=0;
        #10 x=0;y=0;z=1;
        #10 x=0;y=1;z=0;
        #10 x=0;y=1;z=1;
        #10 x=1;y=0;z=0;
        #10 x=1;y=0;z=1;
        #10 x=1;y=1;z=0;
        #10 x=1;y=1;z=1;
        #10 $finish;     
    end
endmodule    
    

