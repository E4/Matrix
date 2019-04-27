// Copyright Emre Yucel 2018

`define init_row            0
`define bit_pump_0          1
`define bit_pump_1          2
`define bit_pump_2          3
`define bit_pump_3          4
`define bit_pump_4          5
`define bit_pump_5          6
`define pump_row            7
`define latch_delay         8
`define latch_row           9
`define phase_delay        10
`define next_phase         11


module display (

  input clk,

  // inputs for putting pixels
  input [9:0] write_address,      // address on screen for putting pixel (0..1023)
  input [23:0] write_color,       // color to write (bBBBBBBBBGGGGGGGGRRRRRRRR)
  input write_enable,             // high to write the pixel

  // outputs to a 32x32 RGB display panel
  output [5:0] output_color,      // RGB bits for display
  output reg [3:0] output_row,    // demux for led row (4 bits)
  output reg display_enable,      // display enabled when high
  output reg output_clock,        // bitbang clock
  output reg row_latch,           // latch bits to display on rising edge
  output best_write_time          // best time to start writing to display
);

  assign output_color[0] = read_scr_top[bitR];
  assign output_color[1] = read_scr_top[bitG];
  assign output_color[2] = read_scr_top[bitB];
  assign output_color[3] = read_scr_bot[bitR];
  assign output_color[4] = read_scr_bot[bitG];
  assign output_color[5] = read_scr_bot[bitB];
  assign best_write_time = (active_state==`phase_delay)&&(phasedelay==6000);

  // memory read top 16 rows
  reg [8:0] read_scr_topddr_top;
  wire [23:0] read_scr_bot;

  // memory read bottom 16 rows
  reg [8:0] read_scr_topddr_bot;
  wire [23:0] read_scr_top;

  // memory write combined
  reg [8:0] write_scr_addr;
  reg [23:0] write_scr;
  reg write_scr_en_top;
  reg write_scr_en_bot;

  ram #(24,512) ram_a(clk,read_scr_topddr_top,read_scr_top,clk,write_scr_addr,write_scr,write_scr_en_top);
  ram #(24,512) ram_b(clk,read_scr_topddr_bot,read_scr_bot,clk,write_scr_addr,write_scr,write_scr_en_bot);

  // FSM controls
  reg [3:0] active_state;
  reg [3:0] active_row;
  reg [2:0] active_phase;
  reg [4:0] active_column;
  reg [8:0] screen_address;

  // bit masks
  reg [4:0] bitR;
  reg [4:0] bitG;
  reg [4:0] bitB;

  // color gradients
  reg [12:0]phasecycles[7:0];
  reg [12:0]phasedelay;

  initial begin
    active_state<=`init_row;
    phasecycles[0]<=50;
    phasecycles[1]<=100;
    phasecycles[2]<=200;
    phasecycles[3]<=400;
    phasecycles[4]<=800;
    phasecycles[5]<=1600;
    phasecycles[6]<=3200;
    phasecycles[7]<=6400;
  end

  always @(posedge clk) begin

    if(write_enable) begin
      write_scr_addr <= write_address;
      write_scr <= write_color;
      if(write_address[9]==0) begin
        write_scr_en_top <= 1;
        write_scr_en_bot <= 0;
      end else begin
        write_scr_en_top <= 0;
        write_scr_en_bot <= 1;
      end
    end else begin
      write_scr_en_top <= 0;
      write_scr_en_bot <= 0;
    end


    if(active_state==`init_row) begin
      active_phase <= 7;
      bitR <= 7;
      bitG <= 15;
      bitB <= 23;
      active_column <= 0;
      screen_address <= active_row*32;
      active_state <= `bit_pump_0;

    end else if(active_state==`bit_pump_0) begin
      row_latch <= 0;
      read_scr_topddr_top <= screen_address;
      read_scr_topddr_bot <= screen_address;
      active_state <= `bit_pump_1;

    end else if(active_state==`bit_pump_1) begin
      active_state<=`bit_pump_2;

    end else if(active_state==`bit_pump_2) begin
      output_clock <= 1;
      active_state<=`bit_pump_4;

    end else if(active_state==`bit_pump_3) begin
      active_state<=`bit_pump_4;

    end else if(active_state==`bit_pump_4) begin
      output_clock <= 0;
      active_state<=`pump_row;

    end else if(active_state==`bit_pump_5) begin
      active_state<=`pump_row;

    end else if(active_state==`pump_row) begin
      active_column <= active_column + 1;
      screen_address <= screen_address + 1;
      if(active_column==31) begin
        active_state <= `latch_delay;
      end else begin
        active_state <= `bit_pump_0;
      end

    end else if(active_state==`latch_delay) begin
      active_state <= `latch_row;

    end else if(active_state==`latch_row) begin
      output_row <= active_row;
      row_latch <= 1;
      phasedelay <= phasecycles[active_phase];
      active_state <= `phase_delay;

    end else if(active_state==`phase_delay) begin
      phasedelay <= phasedelay-1;
      display_enable <= 0;
      if(phasedelay==0) begin
        active_state <= `next_phase;
      end

    end else if(active_state==`next_phase) begin
      display_enable <= 1;
      if(active_phase==0) begin
        active_row <= active_row+1;
        active_state <= `init_row;
      end else begin
        bitR <= bitR-1;
        bitG <= bitG-1;
        bitB <= bitB-1;
        screen_address <= active_row*32;
        active_column <= 0;
        active_phase <= active_phase-1;
        active_state <= `bit_pump_0;
      end

    end

  end


endmodule
