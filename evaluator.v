// Copyright Emre Yucel 2018

`define eval_done               0
`define eval_start              1
`define eval_wait_busy          2
`define eval_started            3
`define eval_sub_complete       4
`define eval_compare            5
`define eval_next               6

`define eval_copy_start         7
`define eval_copy_row           8



module evaluator (
    input clk,
    input [4:0] fld_write_addr,
    input [9:0] fld_write_data,
    input fld_write_enable,
    input [63:0] shape,             // the four shapes to evaluate [4x(4x4) bits]
    input evaluate,                 // set to 1 to start evaluating
    output reg busy,                // 
    output reg [3:0] best_x,        // best position for the shape
    output reg [1:0] best_i         // best rotation index of the shape
  );

  wire [3:0] evaluator_x = sub_state[5:2];
  wire [1:0] evaluator_i = sub_state[1:0];
  wire [15:0] evaluator_shape = shape[(evaluator_i*16)+:16];
  reg sub_start;
  wire sub_busy;
  wire [31:0] evaluator_score;
  reg [31:0] best_score;

  reg [4:0] eval_write_addr;
  reg [9:0] eval_write_data;
  reg eval_write_enable;
  reg [4:0] fld_read_addr;
  wire [9:0] fld_read_data;

  ram #(10,32) field(clk,fld_read_addr,fld_read_data,clk,fld_write_addr,fld_write_data,fld_write_enable);

  sub_evaluator evaluator(clk, eval_write_addr, eval_write_data, eval_write_enable, evaluator_x, evaluator_shape, evaluator_score, sub_start, sub_busy);


  reg [3:0] state = `eval_done;
  reg [5:0] sub_state = 0;

  initial begin
    best_score <= 32'b11111111111111111111111111111111;
    busy <= 0;
    best_x <= 4'b0000;
    best_i <= 2'b00;
  end


  always @(posedge clk) begin
    if(evaluate && state == `eval_done) begin
      best_score <= 32'b11111111111111111111111111111111;
      sub_state <= 0;
      busy <= 1;
      state <= `eval_copy_start;

    end else if(state == `eval_copy_start) begin
      fld_read_addr <= 0;
      state <= `eval_copy_row;


    end else if(state == `eval_copy_row) begin
      if(fld_read_addr < 25) begin
        eval_write_data <= fld_read_data;
        eval_write_enable <= 1;
        eval_write_addr <= fld_read_addr;
        fld_read_addr <= fld_read_addr + 1;
      end else begin
        eval_write_enable <= 0;
        state <= `eval_start;
      end

    end else if(state == `eval_start) begin
      sub_start <= 1;
      state <= `eval_started;

    end else if(state == `eval_started) begin
      sub_start <= 0;
      state <= `eval_wait_busy;

    end else if(state == `eval_wait_busy) begin
      if(sub_busy==0) begin
        state <= `eval_sub_complete;
      end

    end else if(state==`eval_sub_complete) begin
      state <= `eval_compare;

    end else if(state==`eval_compare) begin
      if(evaluator_score <= best_score) begin
        best_x <= evaluator_x;
        best_i <= evaluator_i;
        best_score <= evaluator_score;
      end
      state <= `eval_next;

    end else if(state==`eval_next) begin
      if(sub_state==39) begin
        busy <= 0;
        state <= `eval_done;
      end else begin
        sub_state <= sub_state + 1;
        state <= `eval_copy_start;
      end

    end



  end

endmodule
