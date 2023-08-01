module top_module (
    input clk,
    input d,
    output q
);
    reg q1, q2;
    always @(posedge clk) begin
        q1 <= d ^ q2;
    end
    always @(negedge clk) begin
        q2 <= d ^ q1;
    end

    assign q = q1 ^ q2;
endmodule
// 问题的本质是交替切换两个寄存器的更新，所以可以使用异或的性质来实现
// 巧妙使用异或，并且不需要考虑初始值
// https://blog.csdn.net/weixin_38197667/article/details/90701680


/*
// 本科时的写法，由于寄存器的更新有延迟，所以使用clk的电平值作为判断标准时会出现毛刺
module top_module (
    input clk,
    input d,
    output q
);
    reg q1, q2;
    always @(posedge clk) begin
        q1 <= d;
    end
    always @(negedge clk) begin
        q2 <= d;
    end

    always @(clk) begin
        if(clk) begin
            q <= q1;
        end else begin
            q <= q2;
        end
    end
endmodule
*/
