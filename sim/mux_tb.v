/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #7                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #7 Scalable Multiplexer                                   ***
***                                                                      ***
****************************************************************************
*** Filename: mux_tb.v          Created by Steven Hernandez, 10/29/23    ***
***                                                                      ***
****************************************************************************
*** This module is a testbench for a mux which tests four instances of a ***
*** scalable mux for widths: 1,4,5,6. I also use 3 different parameter   ***
*** redefinitions                                                        ***
****************************************************************************/


`timescale 1 ns / 1 ns

module mux_tb();  
    //EVERYTHING NEEDED FOR ALL MUXES
    
    reg SEL1, SEL4, SEL5, SEL6;
    reg A1, B1, S1;
    wire OUT1;

    reg [3:0] A4, B4, S4;
    wire [3:0] OUT4;
    
    reg [4:0] A5, B5, S5;
    wire [4:0] OUT5;
  
    reg [5:0] A6, B6, S6;
    wire [5:0] OUT6;
    
      // 3 DIFFERENT PARAMETER REDEFINITION
       
    mux #(.SIZE(1)) m1(.A(A1), .B(B1), .SEL(SEL1), .OUT(OUT1));
    mux SIZE4(.A(A4), .B(B4), .SEL(SEL4), .OUT(OUT4));
    mux #(5) m5(.A(A5), .B(B5), .SEL(SEL5), .OUT(OUT5));
    mux m6(.A(A6), .B(B6), .SEL(SEL6), .OUT(OUT6));
    defparam SIZE4.SIZE=4;

	initial begin 
	$vcdpluson;     //ASSIGNING VALUES FOR EACH MUX
   #10 A1=1'b1;
   #10 B1=1'b0;
   #10 SEL1=1'b1;
    
    $display("%d A1=%b B1=%b SEL1=%b OUT1=%b", $time, A1,B1, SEL1, OUT1);
    
    #10 A4 = 4'b0101;
    #10 B4 = 4'b1001;
    #10 SEL4 = 1'b0;
  
     $display("%d A4=%b B4=%b SEL4=%b OUT4=%b", $time, A4, B4, SEL4, OUT4);
  
    #10 A5 = 5'b01010;
    #10 B5 = 5'b11011;
    #10 SEL5 = 1'b1;
    
     $display("%d A5=%b B5=%b SEL5=%b OUT5=%b", $time, A5, B5, SEL5, OUT5);
    
    #10 A6 = 6'b110101;
    #10 B6 = 6'b111011;
    #10 SEL6= 1'bx;
    
    $display("%d A6=%b B6=%b SEL6=%b OUT6=%b", $time, A6, B6, SEL6, OUT6);
            
  #10 $finish;
  end
endmodule