`timescale 1ns / 1ps

class const_examples;
    rand bit [7:0] min_val, mid_val, max_val;

    constraint range_exp {
        min_val > 0;
        mid_val > min_val;
        max_val > mid_val;
        max_val < 128;
    }
endclass

module tb_cons;

    const_examples cons_ex;

    initial begin
        cons_ex = new();

        if(cons_ex.randomize())
            $display("min_val=%0d, mid_val=%0d, max_val=%0d",cons_ex.min_val,cons_ex.mid_val,cons_ex.max_val);
        else
            $display("Randomization failed");
    end

endmodule