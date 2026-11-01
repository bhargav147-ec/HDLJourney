`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2026 14:58:32
// Design Name: 
// Module Name: Ev_od_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ev_od_test;
    reg a,b,c,d,p;
    wire ev,od;
    integer i;
    
    Ev_od dut(.a(a),.b(b),.c(c),.d(d),.p(p),.ev(ev),.od(od));
    initial begin
        for(i=0;i<32;i=i+1) begin
                {a,b,c,d,p} = i[4:0];
                #10; 
            end
            $finish;                  
         end       
endmodule
