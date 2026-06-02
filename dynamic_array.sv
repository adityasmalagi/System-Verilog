`timescale 1ns / 1ps


module dynamic_array();
    int dyn1[];
    int dyn2[];
    
    initial
        begin
             dyn1 = new[5];
             dyn1 = '{1,2,3,4,5};
             
            // foreach(dyn1[i])
             //   dyn1[i] = i;
        
        
      //  $display("the value of the dynamic array is %0d",dyn1);
        
        foreach(dyn1[i])
               $display("dyh1[%0d] = %0d",i,dyn1[i]);
                // Copy method
        dyn2 = dyn1;
      $display("dyn2 = %p", dyn2);
      dyn2[2] = 10;
      $display("dyn2 = %p", dyn2);

    dyn1 = new[10]; // previous data will erase
    dyn2 = new[10] (dyn2); // restoreing the previous elements + 10 new value
    
    $display("the modifide %p",dyn1);
    $display("the modifide %p",dyn2);
    $display("The size of the dynamic array : %p",dyn1.size());
       end
endmodule
