`timescale 1 ns / 1 ps

module top (
    input  wire         clk,
    output reg  [03:00] led
);
  reg [2:0] timer_cnt;

  initial begin
    led = 4'b0000;
    timer_cnt = 3'b000;
  end
  always @(posedge clk) begin
    if (timer_cnt >= 3'b100) begin
      led <= ~led;
      timer_cnt <= 0;
    end else begin
      led <= led;
      timer_cnt <= timer_cnt + 3'b001;
    end
  end
endmodule
