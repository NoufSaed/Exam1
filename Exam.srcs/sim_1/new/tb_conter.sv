`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 09:35:00
// Design Name: 
// Module Name: tb_conter
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


module tb_conter;
logic clk;          
logic reset_n;       
logic load;          
logic load_data;
logic  count   ;
   
   counter_4bi dut
   
   (.clk(clk),     
 .reset_n(reset_n), 
 .load(load),    
 .load_data(load_data),
  .count(count)
   );
   always#5 clk=~clk;
   
  initial begin 
  clk=1;reset_n=1;
  load=1; load_data=0;
  #10
   clk=1; reset_n=0; load=0; load_data=1;
   end
endmodule


