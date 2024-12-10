`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 09:15:32
// Design Name: 
// Module Name: tb_counter4bit
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


module tb_counter4bit;

logic clk;          
logic reset_n;       
logic load;          
logic [3:0]load_data;
logic [3:0] count   ;
   
   counter_4b 
   dut
   (.clk(clk),     
 .reset_n(reset_n), 
 .load(load),    
 .load_data(load_data),
  .count(count)
   );
   always#5 clk=~clk;
   
  initial begin 
   clk=1;reset_n=1; load=1; load_data=4'b1000;
   #10
   clk=1; reset_n=0; load=1; load_data=4'b1111;
    #10
   clk=1; reset_n=1; load=1; load_data=4'b1011;
   #10
   clk=1;  load=1; load_data=4'b1010;
   #10
   clk=1; load=1; load_data=4'b0110;
   #10
   clk=1;  load=1; load_data=4'b1011;
   #10
   clk=1;  load=1; load_data=4'b1011;
   
   end
endmodule
