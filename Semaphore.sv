`timescale 1ns / 1ps

module Semaphore_example;
    
    semaphore sem;
    
    initial
        begin
            sem = new(1);   // no of tokens
                fork
                    task1();
                    task2();
                join
      
    end  
    task task1();
      $display("task1 : waiting to aquire the semaphores tokens");
       sem.get(1);
      $display("sucessfully aquired and working on it");
       
       #10;
       
       //sem.put(1);
       
    endtask
     
    task task2();
      $display("task2 : waiting to aquire the semaphores tokens");
       //sem.try_get(1);
      sem.get(1); 
      $display("sucessfully aquired and working on it");
       
       #5;
       
       sem.put(1);
       
    endtask 
endmodule
