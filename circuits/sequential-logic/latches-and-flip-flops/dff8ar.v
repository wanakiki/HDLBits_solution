module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);

    always @(posedge clk or posedge areset) begin
        if(areset) begin
            q <= 8'b0;
        end else begin
            // 判断是否为上升沿
            if(clk) begin
                q <= d;
            end
        end
    end

endmodule