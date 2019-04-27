/*
   This module is a simple dual port RAM. This RAM is implemented in such a
   way that Xilinx's tools will recognize it as a RAM and implement large
   instances in block RAM instead of flip-flops.
   
   The parameter SIZE is used to specify the word size. That is the size of 
   each entry in the RAM.
   
   The parameter DEPTH is used to specify how many entries are in the RAM.
   
   read_data outputs the value of the entry pointed to by raddr in the previous
   clock cycle. That means to read address 10, you would set address to be 10
   and wait one cycle for its value to show up. The RAM is always reading whatever
   address is. If you don't need to read, just ignore this value.
   
   To write, set write_en to 1, write_data to the value to write, and waddr to 
   the address you want to write.
   
   You should avoid reading and writing to the same address simultaneously.
*/

module ram #(
  parameter SIZE = 8,                // size of each entry
  parameter DEPTH = 8                // number of entries
  )(
    // read interface
  input rclk,                        // read clock
  input [$clog2(DEPTH)-1:0] raddr,   // read address
  output reg [SIZE-1:0] read_data,    // read data


  // write interface
  input wclk,                        // write clock
  input [$clog2(DEPTH)-1:0] waddr,   // write address
  input [SIZE-1:0] write_data,       // write data
  input write_en                     // write enable
);

  reg [SIZE-1:0] mem [DEPTH-1:0];      // memory array

  always @(posedge rclk) begin         // read clock
    read_data <= mem[raddr];           // read memory

  end

  always @(posedge wclk) begin         // write clock
    if (write_en)                      // if write enable
      mem[waddr] <= write_data;        // write memory
  end

endmodule
