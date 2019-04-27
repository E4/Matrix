// Copyright Emre Yucel 2018

`define seval_done               0
`define seval_test_bound         1
`define seval_test_bound_check   2
`define seval_test_shape_wait    3
`define seval_test_shape         4
`define seval_drop_shape         5
`define seval_put_shape_wait     6
`define seval_put_shape          7
`define seval_evaluate_start     8
`define seval_evaluate_0         9
`define seval_evaluate_1        10
`define seval_evaluate_2        11
`define seval_evaluate_3        12
`define seval_evaluate_4        13
`define seval_evaluate_5        14
`define seval_evaluate_fail     15
`define seval_evaluate_complete 16
`define seval_evaluate_wrap     17
`define seval_evaluate_score    18



module sub_evaluator (
    input clk,
    input [4:0] in_write_address,
    input [9:0] in_write_data,
    input in_write_enable,
    input [3:0] shapex,
    input [15:0] shape,
    output reg [31:0] score,
    input evaluate,
    output reg busy
  );

  reg [4:0] fld_write_addr;
  reg [9:0] fld_write_data;
  reg fld_write_enable;
  reg [4:0] fld_read_addr;
  wire [9:0] fld_read_data;

  wire [4:0] wire_write_address;
  wire [9:0] wire_write_data;
  wire wire_write_enable;

  assign wire_write_address = (busy?fld_write_addr:in_write_address);
  assign wire_write_data = (busy?fld_write_data:in_write_data);
  assign wire_write_enable = (busy?fld_write_enable:in_write_enable);

  ram #(10,32) field(clk,fld_read_addr,fld_read_data,clk,wire_write_address,wire_write_data,wire_write_enable);

  reg [4:0] state;
  reg [4:0] sub_state;

  reg [9:0] btype;
  reg [9:0] blocked;



  reg [15:0] HighestBlock;
  reg [15:0] HorizontalTransitions;
  reg [15:0] Wells;
  reg [15:0] VerticalTransitions;
  reg [15:0] BlockedCells;
  reg [15:0] FilledLines;
  reg [5:0] WellValue [9:0];

  reg [4:0] oshapey;
  reg [4:0] shapey;
  reg test_pass;
  reg fail;

  initial begin
    busy <= 0;
  end

  always @(posedge clk) begin
    if(evaluate && state == `seval_done) begin
      busy <= 1;
      blocked <= 0;
      btype <= 0;
      fail <= 0;

      sub_state <= 0;
      test_pass <= 1;
      oshapey <= 0;
      shapey <= 0;
      fld_read_addr <= 0;
      state <= `seval_test_bound;

    end else if(state == `seval_test_bound) begin
      if((shapex>=7) && ((shape[3]==1)||(shape[7]==1)||(shape[11]==1)||(shape[15]==1))) test_pass <= 0;
      if((shapex>=8) && ((shape[2]==1)||(shape[6]==1)||(shape[10]==1)||(shape[14]==1))) test_pass <= 0;
      if((shapex>=9) && ((shape[1]==1)||(shape[5]==1)||(shape[9] ==1)||(shape[13]==1))) test_pass <= 0;
      state <= `seval_test_bound_check;


    end else if(state == `seval_test_bound_check) begin
      if(test_pass==1) begin
        state <= `seval_test_shape_wait;
      end else begin
        fail <= 1;
        state <= `seval_evaluate_fail;
      end


    end else if(state == `seval_test_shape_wait) begin
      state <= `seval_test_shape;


    end else if(state == `seval_test_shape) begin
      if(
        ((fld_read_addr<25) && (fld_read_data & (shape[sub_state+:4]<<shapex))) ||
        ((fld_read_addr>24) && shape[sub_state+:4]!=0)
        ) begin
        test_pass <= 0;
      end
      fld_read_addr <= fld_read_addr + 1;
      if(sub_state==12) begin
        state <= `seval_drop_shape;
      end else begin
        sub_state <= sub_state + 4;
        state <= `seval_test_shape_wait;
      end


    end else if(state == `seval_drop_shape) begin
      if(test_pass==1) begin
        oshapey <= shapey;
        fld_read_addr <= shapey + 1;
        shapey <= shapey + 1;
        sub_state <= 0;
        state <= `seval_test_shape_wait;
      end else if((test_pass==0) && (shapey==0)) begin
        fail <= 1;
        state <= `seval_evaluate_fail;
      end else begin
        fld_read_addr <= oshapey;
        shapey <= oshapey;
        sub_state <= 0;
        state <= `seval_put_shape_wait;
      end


    end else if((state == `seval_put_shape_wait)) begin
      state <= state + 1;


    end else if((state == `seval_put_shape)) begin
      if(fld_read_addr<25) begin
        fld_write_enable <= 1;
        fld_write_data <= fld_read_data | (shape[sub_state+:4]<<shapex);
      end else begin
        fld_write_enable <= 0;
      end
      fld_write_addr <= fld_read_addr;
      fld_read_addr <= fld_read_addr + 1;
      if(sub_state==12) begin
        state <= `seval_evaluate_start;
      end else begin
        sub_state <= sub_state + 4;
        state <= `seval_put_shape_wait;
      end


    end else if(state==`seval_evaluate_start) begin
      HighestBlock <= 0;
      HorizontalTransitions <= 0;
      Wells <= 0;
      VerticalTransitions <= 0;
      BlockedCells <= 0;
      FilledLines <= 0;
      fld_write_enable <= 0;
      fld_read_addr <= 0;
      blocked <= 10'b0000000000;
      btype <= 10'b0000000000;
      WellValue[0] <= 0; WellValue[1] <= 0; WellValue[2] <= 0; WellValue[3] <= 0; WellValue[4] <= 0;
      WellValue[5] <= 0; WellValue[6] <= 0; WellValue[7] <= 0; WellValue[8] <= 0; WellValue[9] <= 0;
      state <= `seval_evaluate_0;


    end else if(state==`seval_evaluate_0) begin
      state <= `seval_evaluate_1;

    end else if(state==`seval_evaluate_1) begin
      if(fld_read_data==10'b0000000000) begin
        // empty
        state <= `seval_evaluate_2;
      end else if(fld_read_data==10'b1111111111) begin
        // full
        FilledLines <= FilledLines + 1;
        state <= `seval_evaluate_4;
      end else begin
        // not empty
        if(HighestBlock==0) HighestBlock <= 24 - fld_read_addr;
        state <= `seval_evaluate_2;
      end

    end else if(state==`seval_evaluate_2) begin

      HorizontalTransitions <=  HorizontalTransitions +
        (fld_read_data[8] != fld_read_data[9])+
        (fld_read_data[0] != 1) + (fld_read_data[9]!=1);


      HorizontalTransitions <=  HorizontalTransitions +
        (fld_read_data[0] != fld_read_data[1])+
        (fld_read_data[1] != fld_read_data[2])+
        (fld_read_data[2] != fld_read_data[3])+
        (fld_read_data[3] != fld_read_data[4])+
        (fld_read_data[4] != fld_read_data[5])+
        (fld_read_data[5] != fld_read_data[6])+
        (fld_read_data[6] != fld_read_data[7])+
        (fld_read_data[7] != fld_read_data[8])+
        (fld_read_data[8] != fld_read_data[9])+
        (fld_read_data[0] != 1)+
        (fld_read_data[9] != 1);

      BlockedCells <= BlockedCells +
        (blocked[0] &~ fld_read_data[0])+
        (blocked[1] &~ fld_read_data[1])+
        (blocked[2] &~ fld_read_data[2])+
        (blocked[3] &~ fld_read_data[3])+
        (blocked[4] &~ fld_read_data[4])+
        (blocked[5] &~ fld_read_data[5])+
        (blocked[6] &~ fld_read_data[6])+
        (blocked[7] &~ fld_read_data[7])+
        (blocked[8] &~ fld_read_data[8])+
        (blocked[9] &~ fld_read_data[9]);

      VerticalTransitions <= VerticalTransitions +
        (btype[0] ^ fld_read_data[0])+
        (btype[1] ^ fld_read_data[1])+
        (btype[2] ^ fld_read_data[2])+
        (btype[3] ^ fld_read_data[3])+
        (btype[4] ^ fld_read_data[4])+
        (btype[5] ^ fld_read_data[5])+
        (btype[6] ^ fld_read_data[6])+
        (btype[7] ^ fld_read_data[7])+
        (btype[8] ^ fld_read_data[8])+
        (btype[9] ^ fld_read_data[9]);

      WellValue[0] <= (~fld_read_data[0] & fld_read_data[1])                    ? (WellValue[0]+1) : (fld_read_data[0]?0:WellValue[0]);
      WellValue[1] <= (fld_read_data[0] & ~fld_read_data[1] & fld_read_data[2]) ? (WellValue[1]+1) : (fld_read_data[1]?0:WellValue[1]);
      WellValue[2] <= (fld_read_data[1] & ~fld_read_data[2] & fld_read_data[3]) ? (WellValue[2]+1) : (fld_read_data[2]?0:WellValue[2]);
      WellValue[3] <= (fld_read_data[2] & ~fld_read_data[3] & fld_read_data[4]) ? (WellValue[3]+1) : (fld_read_data[3]?0:WellValue[3]);
      WellValue[4] <= (fld_read_data[3] & ~fld_read_data[4] & fld_read_data[5]) ? (WellValue[4]+1) : (fld_read_data[4]?0:WellValue[4]);
      WellValue[5] <= (fld_read_data[4] & ~fld_read_data[5] & fld_read_data[6]) ? (WellValue[5]+1) : (fld_read_data[5]?0:WellValue[5]);
      WellValue[6] <= (fld_read_data[5] & ~fld_read_data[6] & fld_read_data[7]) ? (WellValue[6]+1) : (fld_read_data[6]?0:WellValue[6]);
      WellValue[7] <= (fld_read_data[6] & ~fld_read_data[7] & fld_read_data[8]) ? (WellValue[7]+1) : (fld_read_data[7]?0:WellValue[7]);
      WellValue[8] <= (fld_read_data[7] & ~fld_read_data[8] & fld_read_data[9]) ? (WellValue[8]+1) : (fld_read_data[8]?0:WellValue[8]);
      WellValue[9] <= (fld_read_data[8] & ~fld_read_data[9])                    ? (WellValue[9]+1) : (fld_read_data[9]?0:WellValue[9]);
      state <= `seval_evaluate_3;

    end else if(state==`seval_evaluate_3) begin
      Wells <= Wells +
        WellValue[0] + WellValue[1] + WellValue[2] + WellValue[3] + WellValue[4] +
        WellValue[5] + WellValue[6] + WellValue[7] + WellValue[8] + WellValue[9];
      blocked <= fld_read_data | blocked;
      btype <= fld_read_data;
      state <= `seval_evaluate_4;

    end else if(state==`seval_evaluate_4) begin
      if(fld_read_addr==24) begin
        state <= `seval_evaluate_wrap;
      end else begin
        fld_read_addr <= fld_read_addr + 1;
        state <= `seval_evaluate_0;
      end

    end else if(state == `seval_evaluate_wrap) begin
      VerticalTransitions <= VerticalTransitions +
        (btype[0]==0?1:0) + (btype[1]==0?1:0) + (btype[2]==0?1:0) + (btype[3]==0?1:0) + (btype[4]==0?1:0) +
        (btype[5]==0?1:0) + (btype[6]==0?1:0) + (btype[7]==0?1:0) + (btype[8]==0?1:0) + (btype[9]==0?1:0);
      state <= `seval_evaluate_complete;


    end else if(state == `seval_evaluate_complete) begin
      HighestBlock <= 10*HighestBlock;
      HorizontalTransitions <= 10*HorizontalTransitions;
      VerticalTransitions <= 10*VerticalTransitions;
      BlockedCells <= 40*BlockedCells;
      Wells <= 9*Wells;
      state <= `seval_evaluate_score;

    end else if(state == `seval_evaluate_score) begin
      busy <= 0;
      score = (HighestBlock)+(HorizontalTransitions)+(VerticalTransitions)+(BlockedCells)+(Wells)-FilledLines;
      state <= `seval_done;
      

    end else if(state == `seval_evaluate_fail) begin
      busy <= 0;
      score = 32'b11111111111111111111111111111111;
      state <= `seval_done;


    end


  end

endmodule
