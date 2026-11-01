//XNOR Gate using data flow modelling
`timescale 1ns/1ps

module xnor_gate(input a,b,output c);
    assign c = a~^b;
endmodule  
