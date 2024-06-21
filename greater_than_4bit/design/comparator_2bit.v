`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2024 04:05:34 PM
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(
    input [1:0] a, b,
    output aeqb

    );
    
    wire p1, p2, p3, p0;
    
    assign p0 = (~a[1] & ~b[1])  & (~a[0] & ~b[0]);
    assign p1 = (~a[1] & ~b[1])  & (a[0] & b[0]);
    assign p2 = (a[1] & b[1])  & (~a[0] & ~b[0]);
    assign p3 = (a[1] & b[1])  & (a[0] & b[0]);
    
    assign aeqb = p0 | p1 | p2 | p3;
    
endmodule
