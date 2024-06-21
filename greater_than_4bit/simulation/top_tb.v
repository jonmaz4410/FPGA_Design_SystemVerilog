`timescale 1ns / 1ps

module tb_top;

    // Declare inputs as reg and outputs as wire
    reg [3:0] A;
    reg [3:0] B;
    wire GT_4bit;

    // Instantiate the top module
    top uut (
        .A(A),
        .B(B),
        .GT_4bit(GT_4bit)
    );
    
    integer i;
    integer j;

    initial begin
    
        for (i = 0; i < 16; i = i + 1)
        begin
            for (j = 0; j < 16; j = j + 1)
            begin
                B = j;
                #10;
            end
        A = i;
        #10;
        end
        
        $finish;
    end

endmodule

