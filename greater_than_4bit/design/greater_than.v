`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2024 01:41:29 PM
// Design Name: 
// Module Name: greater_than
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


module greater_than

// Input and output ports
(   
    input [1:0] a, b,
    output out
    
);
// Intermediate signal declarations
wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;

//sum of products format

assign tmp1 = ~a[1] & a[0] & ~b[1] & ~b[0];
assign tmp2 = a[1] & ~a[0] & ~b[1] & ~b[0];
assign tmp3 = a[1] & ~a[0] & ~b[1] & b[0];
assign tmp4 = a[1] & a[0] & ~b[1] & ~b[0];
assign tmp5 = a[1] & a[0] & ~b[1] & b[0];
assign tmp6 = a[1] & a[0] & b[1] & ~b[0];

assign out = tmp1 | tmp2 | tmp3 | tmp4 | tmp5 | tmp6;

endmodule