`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 10:14:30
// Design Name: 
// Module Name: tb_counter
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


module tb_counter_4bit;
logic clk;           
logic reset_n;       
logic load;          
logic [3:0]load_data;
 logic [3:0]count;
 
 counter_4bit dut0(.*);
 
 always#5 clk=~clk ;
 
 
  initial begin 
   clk=1;reset_n=1;load=4'b0101; load_data=4'b1000;
  #10
   clk=1; reset_n=0; load=4'b0111; load_data=4'b1111;
    #10
   clk=1; reset_n=1; load=4'b1110; load_data=4'b1011;
   #10
   clk=1; load=4'b0010; load_data=4'b1010;
   
   clk=1; load=4'b0100; load_data=4'b0110;
   
   clk=0; load=4'b0000; load_data=4'b1011;
    end
 

    
endmodule
