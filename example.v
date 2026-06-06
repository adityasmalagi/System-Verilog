`timescale 1ns / 1ps

module example(clk,reset,q,d);
 input clk,reset,d;
 output q;
 
 reg q;
 
 always@(posedge clk)
    if(!reset)
        q <= 0;
    else
        q <= d;
     
endmodule
