// This counter is designed using register, adder and a multiplexer. 
// Normally we don't use this appraoch as this requires more hardware there a simple counter 
// that adds constant value "1'b1".

module counter_4b#(parameter n =4)
(
    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);

    logic [3:0]next_count;
    
    assign next_count = load ? (count + 1) : (load_data);
  /* assign next_count[1] = load ? (count[1] + 1) : (load_data[1]);
   assign next_count[2] = load ? (count[2] + 1) : (load_data[2]);
   assign next_count[3] = load ? (count[3] + 1) : (load_data[3]);
*/
    always @(posedge clk, negedge reset_n)
    begin 
        if(~reset_n)
            count <= 0;
        else 
            count <= next_count;
    end

endmodule