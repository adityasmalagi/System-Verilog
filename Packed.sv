`timescale 1ns / 1ps

module Packed();

bit [7:0]data;

initial 
    begin
        data = 8'b11011101;
      for(int i = 0;i<$size(data);i= i+1)
        $display("data %d = %b",i,data[i]);
       end     
endmodule
