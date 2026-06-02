`timescale 1ns / 1ps

module simple_code(input wire clk);
 wire w0,w1;
 reg r0,r1;
 
 assign w0 = 1'b1;
 assign w1 = r0 & w0;
 
 always@(posedge clk)
    begin
        r1 = r0 & w0;
    end
    initial r0 = 1'b1;
endmodule
