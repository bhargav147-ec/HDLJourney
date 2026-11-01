`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2026 14:48:51
// Design Name: 
// Module Name: Ev_Od_ Parity
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


module Ev_Od_Parity(
    input a,b,c,d,p,output ev,od
    );
    assign ev = ~(a^b^c^d^p);
    assign od= ~ev; 
endmodule
