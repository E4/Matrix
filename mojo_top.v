// Copyright Emre Yucel 2018

`define state_done                  0

`define state_screen_pump_start     1
`define state_screen_pump_pre       2
`define state_screen_pump           3
`define state_screen_pump_next      4
`define state_slap_shape_pre        5
`define state_slap_shape            6
`define state_slap_shape_next       7
`define state_write_variables_start 8
`define state_write_variables_loop  9
`define state_write_variables_next 10
`define state_write_randoms_start  11
`define state_write_randoms_loop   12
`define state_write_randoms_next   13
`define state_write_scores_start   14
`define state_write_scores_loop    15
`define state_write_scores_next    16
`define state_animate_gradient     17
`define state_draw_gradient        18
`define state_draw_gradient_b      19
`define state_clear_bottom_start   20
`define state_clear_bottom         21

`define position_a_x                0
`define position_a_y                0
`define position_b_x               11
`define position_b_y                0
`define position_c_x               22
`define position_c_y                0

`define setting_timeout_reset      500000000

module mojo_top (
    input clk,                // 50MHz clock input
    input rst_n,              // Input from reset button (active low)
    input cclk,               // cclk input from AVR, high when AVR is ready

    output[7:0]led,           // Outputs to the 8 onboard LEDs

    // led matrix
    output [5:0]out_color,    // RGB bits for display
    output[3:0]out_demux,     // demux for led row (4 bits)
    output out_enable,        // display enabled when high
    output out_clock,         // bitbang clock
    output out_latch,         // latch bits to display on rising edge

    output [4:0]out_ground,   // ground these lines
    output out_pullup,        // pull these high

    output spi_miso,          // AVR SPI connections
    input spi_ss,             // AVR SPI connections
    input spi_mosi,           // AVR SPI connections
    input spi_sck,            // AVR SPI connections
    output [3:0] spi_channel, // AVR ADC channel select

    input avr_tx,             // serial connection: AVR Tx => FPGA Rx
    output avr_rx,            // serial connection: AVR Rx => FPGA Tx
    input avr_rx_busy,        // serial connection: AVR Rx buffer full

    input knob_button,        // knob has been pressed
    input [1:0]knob_encoder,  // knob has been rotated

    input random_bit          // will read random bits from this port
  );

  // these signals should be high-z when not used
  assign spi_miso = 1'bz;
  assign avr_rx = 1'bz; 
  assign spi_channel = 4'bzzzz;

  assign led[0] = random_rawbias?0:1;
  assign led[1] = random_rawbias?0:1;
  assign led[2] = random_rawbias?0:1;
  assign led[3] = random_bias?0:1;
  assign led[4] = random_bias?1:0;
  assign led[5] = random_rawbias?1:0;
  assign led[6] = random_rawbias?1:0;
  assign led[7] = random_rawbias?1:0;

  assign out_pullup = 1;
  assign out_ground[0] = 0;
  assign out_ground[1] = 0;
  assign out_ground[2] = 0;
  assign out_ground[3] = 0;
  assign out_ground[4] = 0;

  reg [28:0] setting_timeout = 0;

  reg [9:0] scr_write_address;
  reg [23:0] scr_write_color;
  reg scr_write_enable;

  reg [1:0] mode = 0;
  reg [12:0] primary_counter = 0;
  reg [15:0] secondary_counter = 0;
  reg [4:0] state = `state_done;
  reg [5:0] sub_state;
  reg [5:0] sup_state;
  reg [1:0] game_id = 0;

  wire display_writable;


  display mtrx(clk, scr_write_address, scr_write_color, scr_write_enable, out_color, out_demux, out_enable, out_clock, out_latch, display_writable);

  reg [4:0]   read_addr;

  /* a */
  wire [31:0] a_score;
  wire [29:0] a_read_data;
  wire [15:0] a_shapeb;
  wire [2:0]  a_shapec;
  wire [3:0]  a_shapex;
  wire [4:0]  a_shapey;
  wire        a_busy;

  /* b */
  wire [31:0] b_score;
  wire [29:0] b_read_data;
  wire [15:0] b_shapeb;
  wire [2:0]  b_shapec;
  wire [3:0]  b_shapex;
  wire [4:0]  b_shapey;
  wire        b_busy;

  /* c */
  wire [31:0] c_score;
  wire [29:0] c_read_data;
  wire [15:0] c_shapeb;
  wire [2:0]  c_shapec;
  wire [3:0]  c_shapex;
  wire [4:0]  c_shapey;
  wire        c_busy;


  wire [31:0] score      = game_id==0?a_score:game_id==1?b_score:c_score;
  wire [29:0] read_data  = game_id==0?a_read_data:game_id==1?b_read_data:c_read_data;
  wire [15:0] shapeb     = game_id==0?a_shapeb:game_id==1?b_shapeb:c_shapeb;
  wire [2:0]  shapec     = game_id==0?a_shapec:game_id==1?b_shapec:c_shapec;
  wire [3:0]  shapex     = game_id==0?a_shapex:game_id==1?b_shapex:c_shapex;
  wire [4:0]  shapey     = game_id==0?a_shapey:game_id==1?b_shapey:c_shapey;
  wire game_busy         = game_id==0?a_busy:game_id==1?b_busy:c_busy;

  wire [4:0]  position_x = game_id==0?`position_a_x:game_id==1?`position_b_x:`position_c_x;
  wire [4:0]  position_y = game_id==0?`position_a_y:game_id==1?`position_b_y:`position_c_y;


  // reg [7:0] hue;
  // reg [7:0] saturation;
  // reg [7:0] value;
  // wire [23:0] rgb;

  // hsv2rgb hsv2rgb(hue, saturation, value, rgb);

  reg [23:0] piece_color[7:0];

  reg [20:0] gradientbar [31:0];

  reg [8:0] i;

  /**********************************************************************/
  /* button control *****************************************************/
  /**********************************************************************/
  reg knob_state = 1;                  // pre-debouncer state of the knob
  reg button_state = 1;                // post-debouncer state of knob
  reg [14:0] debouncer = 0;            // debouncer delay

  /**********************************************************************/
  /* rotary encoder control *********************************************/
  /**********************************************************************/
  wire [1:0] cycle_current = (knob_encoder==3)?2:(knob_encoder==2?3:knob_encoder); // change 0,1,3,2 into 0,1,2,3
  reg  [1:0] cycle_previous = 0;       // the previous cycle value
  reg  [1:0] cycle_position = 0;       // when to mark a cycle
  reg        cycle_direction = 0;      // direction of the cycle; 0 decreate, 1 increase
  reg  [1:0] cycle_leftbound = 0;      // left boundary
  reg  [1:0] cycle_rightbound = 0;     // right boundary
  reg        rotary_increment = 0;
  reg        rotary_decrement = 0;

  /**********************************************************************/
  /* variable control ***************************************************/
  /**********************************************************************/
  reg [1:0] selected_variable;
  reg [3:0] variable_variable[3:0];
  reg clear_needed;


  /**********************************************************************/
  /* random controller***************************************************/
  /**********************************************************************/
  reg [12:0] random_rawcount[1:0];     // measuring bias in the random input
  reg random_rawbias;                  // recording bias in the random input
  reg [12:0] random_count[1:0];        // measuring bias in the random input
  reg random_bias;                     // recording bias in the random input
  reg random_rawbitnum;                // indicates number of the bit for von Neumann type decorrelation
  reg random_firstbit;                 // value of the first bit will be compared to second bit
  reg [7:0] random_prevalue;           // composing the random bits into a random value
  reg [2:0] random_valuestep;          // step in creating random value
  reg [7:0] random_value;              // finished random byte


  game #(0) tetro1(clk, rst_n, read_addr, a_read_data, a_shapeb, a_shapec, a_shapex, a_shapey, a_busy, variable_variable[0], random_value[0+:3], a_score);
  game #(1) tetro2(clk, rst_n, read_addr, b_read_data, b_shapeb, b_shapec, b_shapex, b_shapey, b_busy, variable_variable[1], random_value[2+:3], b_score);
  game #(2) tetro3(clk, rst_n, read_addr, c_read_data, c_shapeb, c_shapec, c_shapex, c_shapey, c_busy, variable_variable[2], random_value[4+:3], c_score);



  initial begin
    piece_color[0] <= 16777215;
    piece_color[1] <= 3355647;
    piece_color[2] <= 16741758;
    piece_color[3] <= 3407779;
    piece_color[4] <= 8449279;
    piece_color[5] <= 3377407;
    piece_color[6] <= 16760371;
    piece_color[7] <= 14745855;
  end


  always @(posedge clk) begin
    primary_counter <= primary_counter+1;

    if(primary_counter==0) begin
      if(random_rawcount[0]>random_rawcount[1]) random_rawbias <= 0; else random_rawbias <= 1;
      random_rawcount[0] <= 0;
      random_rawcount[1] <= 0;
    end else if(random_bit==0) begin
      random_rawcount[0] <= random_rawcount[0]+1;
    end else if(random_bit==1) begin
      random_rawcount[1] <= random_rawcount[1]+1;
    end

    if(primary_counter==0) begin
      if(random_count[0]>random_count[1]) random_bias <= 0; else random_bias <= 1;
      random_count[0] <= 0;
      random_count[1] <= 0;
    end else begin
      if(random_rawbitnum==0) begin
        random_rawbitnum <= 1;
        random_firstbit <= random_bit;
      end else begin
        random_rawbitnum <= 0;
        if(random_firstbit!=random_bit) begin
          if(random_firstbit==0 && random_bit==1) begin
            random_count[1]  <= random_count[1]+1;
            random_prevalue  <= (random_prevalue<<1) + 1;
          end else begin
            random_count[0]  <= random_count[0]+1;
            random_prevalue  <= (random_prevalue<<1);
          end
          random_valuestep <= random_valuestep + 1;
          if(random_valuestep==7) random_value <= random_prevalue;
        end
      end
    end

    if(~rst_n||mode==0) begin
      variable_variable[ 0]<=5;
      variable_variable[ 1]<=5;
      variable_variable[ 2]<=5;
      variable_variable[ 3]<=5;
      random_rawcount[0] <= 0;
      random_rawcount[1] <= 0;
      selected_variable <= 3;
      mode<=1;
      clear_needed<=1;
    end

    /**********************************************************************/
    /* rotary encoder handler *********************************************/
    /**********************************************************************/
    if(cycle_previous==cycle_current || primary_counter!=0) begin
      // no movement - handle aftermath
      if(rotary_increment!=0||rotary_decrement!=0) begin
        variable_variable[selected_variable]<=variable_variable[selected_variable]
          +(variable_variable[selected_variable]!=9?rotary_increment:0)
          -(variable_variable[selected_variable]!=0?rotary_decrement:0);
        rotary_increment<=0; rotary_decrement<=0;
      end
    end else if((cycle_previous==0 && cycle_current==1) || (cycle_previous==1 && cycle_current==2) || (cycle_previous==2 && cycle_current==3) || (cycle_previous==3 && cycle_current==0)) begin
      // inc
      if((cycle_leftbound==0 && cycle_current==3) || (cycle_leftbound==1 && cycle_current==0) || (cycle_leftbound==2 && cycle_current==1) || (cycle_leftbound==3 && cycle_current==2)) begin
        // pulling leftbound
        cycle_leftbound<=cycle_current+2;
        cycle_rightbound<=cycle_current;
        if(cycle_direction==0) begin
          // reversed direction
          cycle_direction<=1;
          cycle_position<=cycle_current;
          rotary_increment<=1;
        end else if(cycle_position==cycle_current) begin
          // cycled in the same direction
          rotary_increment<=1;
        end
      end
      cycle_previous<=cycle_current;

    end else if((cycle_previous==0 && cycle_current==3) || (cycle_previous==3 && cycle_current==2) || (cycle_previous==2 && cycle_current==1) || (cycle_previous==1 && cycle_current==0)) begin
      // dec
      if((cycle_rightbound==3 && cycle_current==0) || (cycle_rightbound==0 && cycle_current==1) || (cycle_rightbound==1 && cycle_current==2) || (cycle_rightbound==2 && cycle_current==3)) begin
        // pulling rightbound
        cycle_rightbound<=cycle_current+2;
        cycle_leftbound<=cycle_current;
        if(cycle_direction==1) begin
          // reversed direction
          cycle_direction<=0;
          cycle_position<=cycle_current;
          rotary_decrement<=1;
        end else if(cycle_position==cycle_current) begin
          // cycled in the same direction
          rotary_decrement<=1;
        end
      end
      cycle_previous<=cycle_current;
    end


    /**********************************************************************/
    /* button handler - change selected variable **************************/
    /**********************************************************************/
    if(knob_state!=knob_button) begin
      // start debounce delay
      knob_state<=knob_button;
      debouncer<=15'b111111111111111;
    end else if(debouncer==0 && button_state!=knob_state) begin
      // debounced
      if(knob_state==0) begin
        // actual button press
        selected_variable<=selected_variable+1;
        clear_needed <= 1;
        setting_timeout <= `setting_timeout_reset;
      end
      button_state <= knob_state;
    end else if(debouncer!=0) begin
      debouncer<=debouncer-1;
    end


    /**********************************************************************/
    /* settings timeout ***************************************************/
    /**********************************************************************/
    if(cycle_previous!=cycle_current||knob_state!=knob_button) begin
      setting_timeout <= `setting_timeout_reset;
    end else if(setting_timeout==0&&selected_variable!=3) begin
      selected_variable <= 3;
      clear_needed <= 1;
    end else if(selected_variable!=3) begin
      setting_timeout <= setting_timeout-1;
    end


    /**********************************************************************/
    /* cycle handler ******************************************************/
    /**********************************************************************/
    if(display_writable&&!game_busy) begin
      secondary_counter <= secondary_counter + 1;
      if(game_id == 2) game_id <= 0;
      else game_id <= game_id + 1;
      if(mode==2) state <= `state_animate_gradient;
      else if(mode==1) state<=`state_screen_pump_start;
    end

    /**********************************************************************/
    /* write the field to the screen buffer *******************************/
    /**********************************************************************/
    if(state== `state_animate_gradient) begin
      for(i=0; i<32;i=i+1)
        gradientbar[i]<=gradientbar[i]+100+i;
      sub_state <= 0;
      sup_state <= 0;
      state <= `state_draw_gradient;

    end else if(state == `state_draw_gradient) begin
      scr_write_address <= (sup_state)*32 + sub_state;
      scr_write_enable <= 0;
      state <= `state_draw_gradient_b;

    end else if(state == `state_draw_gradient_b) begin
      scr_write_color <= {gradientbar[sub_state][12+:8],gradientbar[sub_state][12+:8],gradientbar[sub_state][12+:8]};
      if(sub_state==32) begin
        if(sup_state==32) begin
          state <= `state_done;
        end else begin
          sub_state <= 0;
          sup_state <= sup_state+1;
          state <= `state_draw_gradient;
        end
      end else begin
        scr_write_enable <= 1;
        sub_state <= sub_state+1;
        state <= `state_draw_gradient;
      end


    /**********************************************************************/
    /* write the field to the screen buffer *******************************/
    /**********************************************************************/
    end else if(state == `state_screen_pump_start) begin
      read_addr <= 0;
      state <= `state_screen_pump_pre;

    end else if(state == `state_screen_pump_pre) begin
      sub_state <= 0;
      state <= `state_screen_pump;

    end else if(state == `state_screen_pump) begin
      scr_write_address <= sub_state==0?(read_addr*32) + (position_y*32) + position_x:scr_write_address+1;
      if(
        read_data[0*3+:3]!=0 && read_data[1*3+:3]!=0 &&
        read_data[2*3+:3]!=0 && read_data[3*3+:3]!=0 &&
        read_data[4*3+:3]!=0 && read_data[5*3+:3]!=0 &&
        read_data[6*3+:3]!=0 && read_data[7*3+:3]!=0 &&
        read_data[8*3+:3]!=0 && read_data[9*3+:3]!=0
      ) begin
        scr_write_color <= piece_color[0];
      end else if(read_data[sub_state*3+:3]!=0) begin
        scr_write_color <= piece_color[read_data[sub_state*3+:3]];
      end else begin
        scr_write_color <= 65793;
      end
      scr_write_enable <= 1;
      sub_state <= sub_state + 1;
      if(sub_state==9) state <= `state_screen_pump_next;
      else state <= `state_screen_pump;

    end else if(state == `state_screen_pump_next) begin
      scr_write_enable <= 0;
      if(read_addr < 23) begin
        read_addr <= read_addr + 1;
        state <= `state_screen_pump_pre;
      end else begin
        state <= `state_slap_shape_pre;
      end


    /**********************************************************************/
    /* write shape to screen buffer ***************************************/
    /**********************************************************************/
    end else if(state == `state_slap_shape_pre) begin
      sub_state <= 0;
      if(variable_variable[game_id]==0) begin
        state <= `state_clear_bottom_start;
      end else begin
        state <= `state_slap_shape;
      end

    end else if(state == `state_slap_shape) begin
      scr_write_address <= (shapex) + ((shapey+(sub_state/4))*32) + (sub_state%4) + position_x + (position_y*32);

      if(shapeb[sub_state]==1) scr_write_enable <= 1; else scr_write_enable <= 0;
      scr_write_color <= piece_color[shapec];
      state <= `state_slap_shape_next;

    end else if(state == `state_slap_shape_next) begin
      if(sub_state<15) begin
        sub_state <= sub_state + 1;
        state <= `state_slap_shape;
      end else begin
        state <= `state_clear_bottom_start;
      end


    /**********************************************************************/
    /*  clear bottom area of the buffer ***********************************/
    /**********************************************************************/
    end else if(state == `state_clear_bottom_start) begin
      if(clear_needed) begin
        scr_write_address<=32*25;
        scr_write_enable<=1;
        scr_write_color<=0;
        state<=`state_clear_bottom;
      end else begin
        state<=`state_write_variables_start;
      end

    end else if(state == `state_clear_bottom) begin
      if(scr_write_address==0) begin
        clear_needed <= 0;
        scr_write_enable<=0;
        state<=`state_write_variables_start;
      end else begin
        scr_write_address<=scr_write_address+1;
      end


    /**********************************************************************/
    /* write variables to screen buffer ***********************************/
    /**********************************************************************/
    end else if(state == `state_write_variables_start) begin
      scr_write_address <= 32*25 + 0;
      sub_state<=0;
      sup_state<=0;
      if(selected_variable==3) 
        state<=`state_write_scores_start;
      else
        state<=`state_write_variables_loop;

    end else if(state == `state_write_variables_loop) begin
      if(variable_variable[sub_state]==sup_state) begin
        scr_write_color <= (selected_variable==sub_state)?24'b111111111111111111111111:24'b001111110011011100110111;
      end else begin
        scr_write_color <= (selected_variable==sub_state)?24'b001100010000000000001100:24'b000001110000000000000011;
      end
      scr_write_enable <= 1;
      state<=`state_write_variables_next;

    end else if(state==`state_write_variables_next) begin
      if(sup_state==9) begin
        scr_write_address <= scr_write_address+((sub_state==2||sub_state==5||sub_state==8||sub_state==11||sub_state==14)?1:2);
      end else begin
        scr_write_address <= scr_write_address+1;
      end

      if(sup_state==9 && sub_state==2) begin
        scr_write_enable<=0;
        state <= `state_write_randoms_start;
      end else if(sup_state==9) begin
        sup_state<=0;
        sub_state<=sub_state+1;
        state<=`state_write_variables_loop;
      end else begin
        sup_state<=sup_state+1;
        state<=`state_write_variables_loop;
      end


    /**********************************************************************/
    /* write random counters to screen buffer *****************************/
    /**********************************************************************/
    end else if(state == `state_write_randoms_start) begin
      scr_write_address <= 1004;
      sub_state<=0;
      state<=`state_write_randoms_loop;

    end else if(state == `state_write_randoms_loop) begin
      if(sub_state==0||sub_state==1) begin
        scr_write_color <= random_rawbias?0:24'b000000000000000011111111;
      end else if(sub_state==2||sub_state==3) begin
        scr_write_color <= random_bias?0:24'b000000001111111100000000;
      end else if(sub_state==4||sub_state==5) begin
        scr_write_color <= random_bias?24'b000000001111111100000000:0;
      end else if(sub_state==6||sub_state==7) begin
        scr_write_color <= random_rawbias?24'b000000000000000011111111:0;
      end
      scr_write_enable <= 1;
      state<=`state_write_randoms_next;
      
    end else if(state == `state_write_randoms_next) begin
      scr_write_enable<=0;
      if(sub_state==7) begin
        state<=`state_write_scores_start;
      end else begin
        scr_write_address <= scr_write_address+1;
        sub_state <= sub_state+1;
        state<=`state_write_randoms_loop;
      end


    /**********************************************************************/
    /* write score to screen buffer ***************************************/
    /**********************************************************************/
    end else if(state == `state_write_scores_start) begin
      scr_write_address <= (27+game_id)*32;
      sub_state<=0;
      state<=`state_write_scores_loop;

    end else if(state == `state_write_scores_loop) begin
      if(score[sub_state]==1) begin
        scr_write_color <= 24'b100000001111111110000000;
      end else  begin
        scr_write_color <= 24'b000001010000010100000101;
      end
      scr_write_enable <= 1;
      state<=`state_write_scores_next;
      
    end else if(state == `state_write_scores_next) begin
      scr_write_enable<=0;
      if(sub_state==31) begin
        state<=`state_done;
      end else begin
        scr_write_address <= scr_write_address+1;
        sub_state <= sub_state+1;
        state<=`state_write_scores_loop;
      end


    end


  end

endmodule

