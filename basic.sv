`timescale 1ns / 1ps

module basic(input wire clk);
 
 always@(posedge clk)begin
    $display("hello world");
 end
endmodule
