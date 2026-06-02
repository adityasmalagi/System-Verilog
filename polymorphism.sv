`timescale 1ns / 1ps

class animal;
    virtual function void speak();        ///that virtual for polymorphism
       $display("animal makes a sound");
    endfunction
endclass

class dog extends animal;
    function void speak();
        $display("dog barks");
    endfunction
endclass
    
class cat extends animal;
    function void speak();
        $display("cat meow");
    endfunction    
endclass

module inheritance_polymorphism_ex;
    initial 
        begin
            animal animal_h;   //parent class handle
            dog dog_h;           //1st child class handle
            cat cat_h;          //2nd child class handle
       
       // CReating objects for this handle
       
       animal_h = new();
       dog_h = new();
       cat_h = new();
       
    //animal_h.speak();     
    //dog_h.speak();        
    //cat_h.speak();    
    
    animal_h = dog_h;  
    animal_h.speak(); 
    
    end        
endmodule
