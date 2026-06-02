`timescale 1ns / 1ps

module mailbox_example();

    mailbox mbox;
    int data;
        
        initial
            begin
                    mbox = new();
                 fork                    // Producer or sender block
                    begin    // thread 1
                        for(int i = 0;i<5 ;i++)
                            begin
                                $display("Producer : sending data %0d",i);
                                mbox.put(i);
                         end
                     end
                     
                 begin     // thread 2
                        for(int i = 0;i<5 ;i++)
                            begin
                                 mbox.get(data);
                                $display("Reciever : Recieving the data %0d",data);
                         end
                     end
                 join
           end
endmodule
