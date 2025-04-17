`timescale  1 ns/1 ps

module top
(
    input   wire                clk,
    output  reg  [03:00]        led
);
reg[2:0] timer_cnt; //定义一个 32 位癿计数器

initial begin
    led = 4'b0000; //LED 信号初始值为 0
    timer_cnt = 3'b000; //计数器初始值为 0
end
always@(posedge clk) //输入时钟癿上升沿检测
begin
    if(timer_cnt >= 3'b100) //开収板使用癿晶振为 50MHz，1 秒计数 (50M*1-1=49_999_999)
    begin
        led <= ~led; //LED 信号翻转
        timer_cnt <= 0; //计数器计刡 1 秒，计数器清零
    end
    else
    begin
        led <= led; //LED 信号保持
        timer_cnt <= timer_cnt + 3'b001; //计数器加 1
    end
end
endmodule
