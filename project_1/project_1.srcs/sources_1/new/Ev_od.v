`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2026 14:57:35
// Design Name: 
// Module Name: Ev_od
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


module Ev_od(
    input a,b,c,d,p,
    output ev,od
    );
    xor ev_pty(ev,a,b,c,d,p);
    not odd_pty(odd,ev);
endmodule
