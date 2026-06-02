`timescale 1ns / 1ps

module Queue();
    int q1[$];
    int q2[$];
    
    initial
        begin
        q1 = '{1,2,3,4,5};
        $display("the value of the queue id %p",q1);
        q1.insert(1,10);                                    //1
        $display("value is %p",q1);
        
        q1.push_front(20);                                    //2
        $display("the value is first %p",q1);
        
        q1.delete(3);                                          //3
                $display("the value is first %p",q1);
    
        q1.push_back(69);                                       //4
                $display("the value is first %p",q1);
                
        q1.pop_front();                                         //5
        $display("the value is first %p",q1);
        
        q1.pop_back();                                           //6
           $display("the value is first %p",q1);

       end
endmodule
