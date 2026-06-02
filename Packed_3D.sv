`timescale 1ns / 1ps

module Packed_3D();

bit [2:0][3:0][7:0] data;

initial begin

    data = 96'h1111_2222_3333_4444_5555_6666;

    $display("the value of data is %b", data);

    foreach(data[i]) begin

        $display("data[%0d] = %b", i, data[i]);

        foreach(data[i][j]) begin
            $display("data[%0d][%0d] = %b", i, j, data[i][j]);
        end

    end

end

endmodule