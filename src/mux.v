/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #7                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #7 Scalable Multiplexer                                   ***
***                                                                      ***
****************************************************************************
*** Filename: mux.v       Created by Steven Hernandez, 10/29/23          ***
***                                                                      ***
****************************************************************************
*** This module is for a scalable mux:                                   ***
*** the size of the data ports is determined by a parameter              ***
****************************************************************************/

`timescale 1 ns / 1 ns
module mux(A, B, SEL, OUT);
    parameter SIZE=1;
    input [SIZE-1:0] A, B;
    input SEL;
    output [SIZE-1:0] OUT;
    reg [SIZE-1:0] OUT;
    
    always @(A or B or SEL) begin 
        if (SEL == 0) 
            OUT <= A;
        else 
        if (SEL == 1) 
            OUT <=B;
        else 
            OUT <= A & B;
            end
endmodule 
              