`timescale 1ns / 1ps

module automate_task();
   int i;           //static in nature
    task automatic increment();
   // int i;
        int a;       //dynamic in nature
        i = i + 1;
        a = a + 1;
        $display("the incremented  i value %d",i);
         $display("the incremented  i value %d",a);

    endtask
    
    initial
        begin
            increment();
            increment();
            increment();
       end
endmodule
