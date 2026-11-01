`timescale 1ns / 1ps

module jk_flip_flop(input j,k,clk, output reg q=0);
    always @(posedge clk) begin
        case({j,k})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
        endcase
    end        
endmodule

module ripple_counter(
    input vcc,clk, output i0,i1,i2,i3
    );
    jk_flip_flop u1(.j(vcc),.k(vcc),.clk(clk),.q(i0));
    jk_flip_flop u2(.j(vcc),.k(vcc),.clk(i0),.q(i1));
    jk_flip_flop u3(.j(vcc),.k(vcc),.clk(i1),.q(i2));  
    jk_flip_flop u4(.j(vcc),.k(vcc),.clk(i2),.q(i3));
endmodule
