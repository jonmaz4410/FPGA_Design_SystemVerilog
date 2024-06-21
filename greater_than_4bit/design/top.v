`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2024 04:16:44 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(

    input [3:0] A, B,
    output GT_4bit
    );
    
    wire msb_out, eq_out, lsb_out, and_out;
    
    comparator_2bit msb_comparator(
        .a(A[3:2]),
        .b(B[3:2]),
        .aeqb(eq_out)
        );
        
    greater_than msb_gt
    (
        .a(A[3:2]),
        .b(B[3:2]),
        .out(msb_out)
    );
    
    greater_than lsb_gt
    (
        .a(A[1:0]),
        .b(B[1:0]),
        .out(lsb_out)
    );
    
    assign and_out = lsb_out & eq_out;
    assign GT_4bit = msb_out | and_out;
     
endmodule
