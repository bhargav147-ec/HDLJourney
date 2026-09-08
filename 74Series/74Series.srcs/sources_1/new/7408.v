`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2026 22:08:46
// Design Name: 
// Module Name: 7408
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


module IC7408(
    input a0,a1,
    input a2,a3,
    input a4,a5,
    input a6,a7,
    output b0,b1,
    output b2,b3
    );
  
assign b0 = a0 & a1;
assign b1 = a3 & a2;
assign b2 = a5 & a4;
assign b3 = a6 & a7;
   
endmodule
