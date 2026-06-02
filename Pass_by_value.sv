`timescale 1ns / 1ps


module Pass_by_value();
    
    int x,y;
    task automatic ex(ref int x,y);
        x = x + y;
        $display("the value of ex is %d %d",x,y);
    endtask
    
    initial
        begin
         x = 0;
         y = 1;
         ex(x,y);
      $display("the value of x and y are %d %d",x,y);
     end
        
endmodule
