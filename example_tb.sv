`timescale 1ns / 1ps

module example_tb();

reg clk,reset,d;
wire q;

example example0(.clk(clk), .reset(reset), .d(d), .q(q));

always #10 clk <= ~clk;

initial
    begin
        clk <= 0;
        reset <= 0;
        d <= 0;
        
    #10 reset <= 1;
    #5  d <= 1;
    #8  d <= 0;
    #2  d <= 1;
    #10 d <= 0;
   end
endmodule
