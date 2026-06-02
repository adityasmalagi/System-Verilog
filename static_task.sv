`timescale 1ns / 1ps

module static_task();
    int i;
    
    task increment();
        i = i +1;
    
     endtask
     initial
        begin
            increment();
            $display("the value of i is %0d after first increment",i);
            increment();
            $display("the value of i is %0d after second increment",i);

     end      
endmodule
