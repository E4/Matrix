// Copyright Emre Yucel 2018

module hsv2rgb (
    input [7:0] hue,
    input [7:0] saturation,
    input [7:0] value,
    output reg [23:0] rgb
  );

  reg [2:0] region;
  reg [7:0] remainder;
  reg [7:0] p;
  reg [7:0] q;
  reg [7:0] t;

  always begin
    region = hue / 43;
    remainder = (hue - (region * 43)) * 6;
    p = (value * (255 - saturation)) >> 8;
    q = (value * (255 - ((saturation * remainder) >> 8))) >> 8;
    t = (value * (255 - ((saturation * (255 - remainder)) >> 8 )) >> 8);

    if(region==0) begin
      rgb = {p[7:0],t[7:0],value[7:0]};
      //p:t:value
    end else if(region==1) begin
      rgb = {p[7:0],value[7:0],q[7:0]};
      //p:value:q
    end else if(region==2) begin
      rgb = {t[7:0],value[7:0],p[7:0]};
      //t:value:p
    end else if(region==3) begin
      rgb = {value[7:0],q[7:0],p[7:0]};
      //value:q:p
    end else if(region==4) begin
      rgb = {value[7:0],p[7:0],t[7:0]};
      //value:p:t
    end else /* if(region==5)*/ begin
      rgb = {q[7:0],p[7:0],value[7:0]};
      //q:p:value
    end

  end

  
endmodule
