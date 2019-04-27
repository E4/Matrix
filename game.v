// Copyright Emre Yucel 2018

`define game_done                    0
`define game_reset                   1
`define game_reset_loop              2
`define game_drop_shape              3
`define game_test_shape_start        4
`define game_test_shape              5
`define game_test_shape_wait         6
`define game_test_shape_result       7
`define game_write_shape             8
`define game_write_shape_wait        9
`define game_next_row               10
`define game_evaluate               11
`define game_evaluator_start        12
`define game_evaluate_wait          13
`define game_new_shape              14
`define game_highlight_complete     15
`define game_sweep_start            16
`define game_sweep_read             17
`define game_sweep_write            18
`define game_sweep_write_delay      19
`define game_sweep_check            20
`define game_sweep_next             21
`define game_sweep_done             22


module game #(
  parameter INITIAL = 0
  )(
    input clk,
    input rst_n,
    input [4:0] output_read_addr,
    output [29:0] output_read_data,
    output reg [15:0] z1b,
    output [2:0] shape_index,
    output reg [3:0] oshapex,
    output reg [4:0] oshapey,
    output busy,
    input [3:0] speed,
    input [2:0] random,
    output score
  );

  assign shape_index = shape/4+1;
  assign busy = state==`game_done?0:1;

  reg [15:0] z1[27:0];
  reg [47:0] z3[27:0];
  reg [47:0] z3b;
  reg [20:0] adjustable_speed[10:0];

  initial begin
    oshapex = 0; oshapey = 0;
    z1[0]  <= 16'b0001000100010001; //b0100010001000100 I
    z1[1]  <= 16'b0000000011110000; //b0000111100000000
    z1[2]  <= 16'b0001000100010001; //b0100010001000100
    z1[3]  <= 16'b0000000011110000; //b0000111100000000
    z1[4]  <= 16'b0000000001110010; //b0100111000000000 T
    z1[5]  <= 16'b0000000100110001; //b0100011001000000
    z1[6]  <= 16'b0000001001110000; //b0000111001000000
    z1[7]  <= 16'b0000001000110010; //b0100110001000000
    z1[8]  <= 16'b0000000100110010; //b0100110010000000 Z
    z1[9]  <= 16'b0000011000110000; //b0000110001100000
    z1[10] <= 16'b0000000100110010; //b0100110010000000
    z1[11] <= 16'b0000011000110000; //b0000110001100000
    z1[12] <= 16'b0000001000110001; //b0100011000100000 S
    z1[13] <= 16'b0000001101100000; //b0000011011000000
    z1[14] <= 16'b0000001000110001; //b0100011000100000
    z1[15] <= 16'b0000001101100000; //b0000011011000000
    z1[16] <= 16'b0000000000110011; //b1100110000000000 O
    z1[17] <= 16'b0000000000110011; //b1100110000000000
    z1[18] <= 16'b0000000000110011; //b1100110000000000
    z1[19] <= 16'b0000000000110011; //b1100110000000000
    z1[20] <= 16'b0000001100100010; //b0100010011000000 J
    z1[21] <= 16'b0000000001110001; //b1000111000000000
    z1[22] <= 16'b0000000100010011; //b0110010001000000
    z1[23] <= 16'b0000010001110000; //b0000111000100000
    z1[24] <= 16'b0000001100010001; //b0100010001100000 L
    z1[25] <= 16'b0000000101110000; //b0000111010000000
    z1[26] <= 16'b0000001000100011; //b1100010001000000
    z1[27] <= 16'b0000000001110100; //b0010111000000000
    z3[0]  <= 47'b000000000001000000000001000000000001000000000001;
    z3[1]  <= 47'b000000000000000000000000001001001001000000000000;
    z3[2]  <= 47'b000000000001000000000001000000000001000000000001;
    z3[3]  <= 47'b000000000000000000000000001001001001000000000000;
    z3[4]  <= 47'b000000000000000000000000000010010010000000010000;
    z3[5]  <= 47'b000000000000000000000010000000010010000000000010;
    z3[6]  <= 47'b000000000000000000010000000010010010000000000000;
    z3[7]  <= 47'b000000000000000000010000000000010010000000010000;
    z3[8]  <= 47'b000000000000000000000011000000011011000000011000;
    z3[9]  <= 47'b000000000000000011011000000000011011000000000000;
    z3[10] <= 47'b000000000000000000000011000000011011000000011000;
    z3[11] <= 47'b000000000000000011011000000000011011000000000000;
    z3[12] <= 47'b000000000000000000100000000000100100000000000100;
    z3[13] <= 47'b000000000000000000100100000100100000000000000000;
    z3[14] <= 47'b000000000000000000100000000000100100000000000100;
    z3[15] <= 47'b000000000000000000100100000100100000000000000000;
    z3[16] <= 47'b000000000000000000000000000000101101000000101101;
    z3[17] <= 47'b000000000000000000000000000000101101000000101101;
    z3[18] <= 47'b000000000000000000000000000000101101000000101101;
    z3[19] <= 47'b000000000000000000000000000000101101000000101101;
    z3[20] <= 47'b000000000000000000110110000000110000000000110000;
    z3[21] <= 47'b000000000000000000000000000110110110000000000110;
    z3[22] <= 47'b000000000000000000000110000000000110000000110110;
    z3[23] <= 47'b000000000000000110000000000110110110000000000000;
    z3[24] <= 47'b000000000000000000111111000000000111000000000111;
    z3[25] <= 47'b000000000000000000000111000111111111000000000000;
    z3[26] <= 47'b000000000000000000111000000000111000000000111111;
    z3[27] <= 47'b000000000000000000000000000111111111000111000000;
    adjustable_speed[0]  <= 1000;
    adjustable_speed[1]  <= 50000;
    adjustable_speed[2]  <= 135000;
    adjustable_speed[3]  <= 275000;
    adjustable_speed[4]  <= 500000;
    adjustable_speed[5]  <= 800000;
    adjustable_speed[6]  <= 1100000;
    adjustable_speed[7]  <= 1350000;
    adjustable_speed[8]  <= 1570000;
    adjustable_speed[9]  <= 1790000;
    adjustable_speed[10] <= 2000000;
  end


  wire [29:0] fldclr_read_data;
  reg  [4:0] fldclr_read_addr;
  reg  [29:0] fldclr_write_data;
  reg  [4:0] fldclr_write_addr;
  reg  fldclr_write_enable;

  wire [9:0] fld_read_data;
  reg  [4:0] fld_read_addr;
  reg  [9:0] fld_write_data;
  reg  [4:0] fld_write_addr;
  reg  fld_write_enable;

  ram #(30,32) field_output(clk,output_read_addr,output_read_data,clk,fldclr_write_addr,fldclr_write_data,fldclr_write_enable);
  ram #(30,32) field_colour(clk,fldclr_read_addr,fldclr_read_data,clk,fldclr_write_addr,fldclr_write_data,fldclr_write_enable);
  ram #(10,32) field(clk,fld_read_addr,fld_read_data,clk,fld_write_addr,fld_write_data,fld_write_enable);


  wire [3:0] bestx;
  wire [1:0] besti;

  reg [4:0] shape   = INITIAL*4;
  reg [3:0] shapex  = 0;
  reg [4:0] shapey  = 0;
  reg [1:0] shapei  = 0;
  reg [1:0] oshapei = 0;

  reg [63:0] evaluator_shape;
  reg [1:0] evaluator_i;
  reg evaluator_start;
  wire evaluator_busy;

  evaluator evaluator(clk, fld_write_addr, fld_write_data, fld_write_enable, evaluator_shape, evaluator_start, evaluator_busy, bestx, besti);

  reg [4:0] state = `game_reset;
  reg [5:0] sub_state;
  reg test_pass;
  reg need_highlight = 0;
  reg need_sweep = 0;
  reg [25:0]second;
  reg [31:0]score;


  always @(posedge clk) begin
    if(second >= adjustable_speed[speed]) begin
      second <= 0;
      if(state==`game_done) begin
        sub_state <= 0;
        if(rst_n==0) begin
          state <= `game_reset;
        end else if(need_highlight) begin
          need_highlight <= 0;
          need_sweep <= 1;
          state <= `game_highlight_complete;
        end else if(need_sweep) begin
          need_sweep <= 0;
          state <= `game_sweep_start;
        end else begin
          state <= `game_drop_shape;
        end
      end
    end else begin
      second <= second+1;
    end


    /**********************************************************************/
    /* reset field ********************************************************/
    /**********************************************************************/
    if(state == `game_reset) begin
      fld_write_addr <= sub_state;
      fldclr_write_addr <= sub_state;
      fld_write_data <= sub_state<24?10'b0000000000:10'b1111111111;
      fldclr_write_data <= 30'b000000000000000000000000000000;
      fld_write_enable <= 0;
      fldclr_write_enable <= 0;
      score <= 0;
      state <= `game_reset_loop;

    end else if(state == `game_reset_loop) begin
      if(sub_state<25) begin
        fld_write_enable <= 1;
        fldclr_write_enable <= 1;
        sub_state <= sub_state + 1;
        state <= `game_reset;
      end else begin
        fld_write_enable <= 0;
        fldclr_write_enable <= 0;
        state <= `game_new_shape;
      end


    /**********************************************************************/
    /* move shape to best position ****************************************/
    /**********************************************************************/
     end else if(state == `game_drop_shape) begin
      if(besti!=shapei) shapei <= shapei + 1;
      else if(bestx<shapex) shapex <= shapex - 1;
      else if(bestx>shapex) shapex <= shapex + 1;
      else shapey <= shapey + 1;
      state <= `game_test_shape_start;

    end else if(state == `game_test_shape_result) begin
      sub_state <= 0;
      if(test_pass==1) begin // test passed: move to shape/shapex/shapey
        oshapei <= shapei;
        oshapex <= shapex;
        oshapey <= shapey;
        z1b <= z1[shape+shapei];
        z3b <= z3[shape+shapei];
        fld_read_addr <= shapey;
        fldclr_read_addr <= shapey;
        state <= `game_done;
      end else begin // test failed: stay in ishape/oshapex/oshapey
        shapei <= oshapei;
        shapex <= oshapex;
        shapey <= oshapey;
        z1b <= z1[shape+oshapei];
        z3b <= z3[shape+oshapei];
        fld_read_addr <= oshapey;
        fldclr_read_addr <= oshapey;
        if(shapey==0) begin
          state <= `game_reset;
        end else begin
          state <= `game_write_shape_wait;
        end
      end


    /**********************************************************************/
    /* check if the shape can be moved ************************************/
    /**********************************************************************/
    end else if(state == `game_test_shape_start) begin
      z1b <= z1[shape+shapei];
      fld_read_addr <= shapey;
      sub_state <= 0;
      test_pass <= 1;
      state <= `game_test_shape_wait;

    end else if(state == `game_test_shape) begin
      if(
        (fld_read_addr<25 && (fld_read_data & (z1b[sub_state+:4]<<shapex))) ||
        (fld_read_addr>24 && z1b[sub_state+:4]!=0)
        ) begin
        test_pass <= 0;
      end
      fld_read_addr <= fld_read_addr + 1;
      if(sub_state==12) begin
        state <= `game_test_shape_result;
      end else begin
        sub_state <= sub_state + 4;
        state <= `game_test_shape_wait;
      end

    end else if(state == `game_test_shape_wait) begin
      z1b <= z1[shape+shapei];
      state <= `game_test_shape;


    /**********************************************************************/
    /* write shape to field ***********************************************/
    /**********************************************************************/
    end else if(state == `game_write_shape) begin
      fld_write_addr <= fld_read_addr;
      fldclr_write_addr <= fldclr_read_addr;
      if(fld_read_addr<25) begin
        fld_write_enable <= 1;
        fldclr_write_enable <= 1;
        fld_write_data <= fld_read_data | (z1b[sub_state+:4]<<oshapex);
        fldclr_write_data <= fldclr_read_data | (z3b[(sub_state*3)+:12]<<(oshapex*3));
      end else begin
        fld_write_enable <= 0;
        fldclr_write_enable <= 0;
      end
      fld_read_addr <= fld_read_addr + 1;
      fldclr_read_addr <= fldclr_read_addr + 1;
      if(sub_state==12) begin
        state <= `game_new_shape;
      end else begin
        sub_state <= sub_state + 4;
        state <= `game_write_shape_wait;
      end

    end else if(state == `game_write_shape_wait) begin
      state <= `game_write_shape;


    /**********************************************************************/
    /* evaluate best move *************************************************/
    /**********************************************************************/
    end else if(state==`game_evaluate) begin
      evaluator_shape <= {z1[shape+3], z1[shape+2], z1[shape+1], z1[shape]};
      evaluator_start <= 1;
      state <= `game_evaluator_start;

    end else if(state==`game_evaluator_start) begin
      evaluator_start <= 0;
      state <= `game_evaluate_wait;

    end else if(state==`game_evaluate_wait) begin
      if(evaluator_busy==0) begin
        need_highlight <= 1;
        state <= `game_done;
      end


    /**********************************************************************/
    /* highlight completed lines ******************************************/
    /**********************************************************************/
    end else if(state==`game_highlight_complete) begin
      state <= `game_done;


    /**********************************************************************/
    /* sweep completed lines **********************************************/
    /**********************************************************************/
    end else if(state==`game_sweep_start) begin
      fld_read_addr <= 23;
      fld_write_addr <= 23;
      fldclr_read_addr <= 23;
      fldclr_write_addr <= 23;
      fld_write_enable <= 0;
      fldclr_write_enable <= 0;
      state <= `game_sweep_read;

    end else if(state==`game_sweep_read) begin
      if(fld_read_addr!=fld_write_addr) begin
        state <= `game_sweep_write;
      end else begin
        state <= `game_sweep_check;
      end

    end else if(state==`game_sweep_write) begin
      fld_write_data <= fld_read_data;
      fldclr_write_data <= fldclr_read_data;
      fld_write_enable <= 1;
      fldclr_write_enable <= 1;
      state <= `game_sweep_write_delay;

    end else if(state==`game_sweep_write_delay) begin
      fld_write_enable <= 0;
      fldclr_write_enable <= 0;
      state <= `game_sweep_check;

    end else if(state==`game_sweep_check) begin
      if(fld_read_data!=10'b1111111111) begin
        fld_write_addr <= fld_write_addr - 1;
        fldclr_write_addr <= fldclr_write_addr - 1;
      end else begin
        score <= score+1;
      end
      state <= `game_sweep_next;

    end else if(state==`game_sweep_next) begin
      if(fld_read_addr==0) begin
        fld_write_addr <= fld_write_addr - 1;
        fldclr_write_addr <= fldclr_write_addr - 1;
        fld_write_data <= 10'b0000000000;
        fldclr_write_data <= 30'b000000000000000000000000000000;
        fld_write_enable <= 1;
        fldclr_write_enable <= 1;
        state <= `game_sweep_done;
      end else begin
        fld_read_addr <= fld_read_addr - 1;
        fldclr_read_addr <= fldclr_read_addr - 1;
        state <= `game_sweep_read;
      end

    end else if(state==`game_sweep_done) begin
      fld_write_enable <= 0;
      fldclr_write_enable <= 0;
      state <= `game_done;

    /**********************************************************************/
    /* acquire new piece **************************************************/
    /**********************************************************************/
    end else if(state==`game_new_shape) begin
      if(random!=7) begin
        shapey <= 0;
        oshapey <= 0;
        shapex <= 3;
        oshapex <= 3;
        shape <= 4*random;
        state <= `game_evaluate;
      end


    /**********************************************************************/
    /* la fin de chemain **************************************************/
    /**********************************************************************/
    end else if(state==`game_done) begin
      fld_write_enable <= 0;
      fldclr_write_enable <= 0;

    end


  end

endmodule
