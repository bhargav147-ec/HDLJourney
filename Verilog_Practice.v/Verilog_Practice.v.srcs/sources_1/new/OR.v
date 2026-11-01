//OR Gate using structural modelling
`timescale 1ns/1ps
module or_gate(
    input x,y,
    output z
    );
    or OR_gate(z,x,y);  
endmodule
